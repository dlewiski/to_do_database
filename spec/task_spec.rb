require 'rspec'
require 'pg'
require 'task'
require 'spec_helper'
# require 'test'

describe(Task) do
  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-30 00:00:00"})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe("#description") do
    it("lets you read the description out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-30"})
      expect(test_task.description()).to(eq("learn SQL"))
    end
  end

  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-30"})
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe("#==") do
    it("is the same task if it has the same description and list ID") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-30"})
      task2 = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-30"})
      expect(task1).to(eq(task2))
    end
  end

  describe("#due_date") do
    it("returns the due date") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-30"})
      expect(task1.due_date()).to(eq("2018-03-30"))
    end
  end

  describe(".order_by_date") do
    it("organizes data by due date") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-30 00:00:00"})
      task2 = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-10 00:00:00"})
      task3 = Task.new({:description => "learn SQL", :list_id => 1, :due_date =>"2018-03-20 00:00:00"})
      task1.save()
      task2.save()
      task3.save()
      expect(Task.all()).to(eq([task2, task3, task1]))
    end
  end
end
