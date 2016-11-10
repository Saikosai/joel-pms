<%@ include file="/WEB-INF/jsp/base.jspf" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/template" %>
<div class="modal fade" id="questionModal" tabindex="-1" role="dialog" aria-labelledby="questionModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"></span>
                </button>
                <h4 class="modal-title" id="questionModalLabel">Ask a Question</h4>
            </div>
            <div class="modal-body">
                <form action="<c:url value="/faq"/>" method="post" id="question-form" role="form">
                    <div class="form-group">
                        <label for="question-subject" class="control-label">Subject</label>
                        <div id="question-subject" class="dropdown form-group">
                            <select class="form-control" name="question-subject" id="sel1">
                                <option value="">Select a subject</option>
                                <option value="contact">Contact</option>
                                <option value="payment">Payment</option>
                                <option value="info">Info</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="question-content" class="control-label">Question</label>
                        <textarea name="question-content" id="question-content" placeholder="Ask a question!" class="form-control"></textarea>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button id="save-question" type="submit" class="btn btn-primary">Send question</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
