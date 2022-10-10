package models.validators;

import models.Task;

public class TaskValidator {
    // バリデーションを実行する
    public static String validate(Task t){
        String content_error = validateContent(t.getContent());
        if(content_error.equals("")) {
            content_error = null;
        }
        return content_error;
    }

    // タスクの必須入力チェック
    private static String validateContent(String content) {
        if(content == null || content.equals("")) {
            return "メッセージを入力してください。";
        }
        return "";
    }
}
