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
                <form>
                    <div class="dropdown form-group">
                        <label for="question-topic" class="control-label">Topic</label>
                        <div id="question-topic" class="dropdown form-group">
                            <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Select a Topic
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dLabel">
                                <li>
                                    <a href="#">Contact</a>
                                </li>
                                <li>
                                    <a href="#">Payment</a>
                                </li>
                                <li>
                                    <a href="#">Info</a>
                                </li>
                                <li>
                                    <a href="#">Other</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="question-text" class="control-label">Question</label>
                        <textarea id="question-text" placeholder="Ask a question!" class="form-control"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Send question</button>
            </div>
        </div>
    </div>
</div>
