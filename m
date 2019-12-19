Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B33512704A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:05:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cn7NfwwqbjcwK52YNfvK8Z+DMslARy/oRducwbDiszE=; b=MBrS2viflkcYTs
	ZCC98UuJvsY28KQXQN32zGAkAwmgsServu8Igpa/nQCUrZEzUeA7xmRcwpU3N96YHKI5DBlBXfmST
	2YmxwWI/lSeskPwxj3JdtIcVKrRLw5U8K4MCa428j8tjQBbzBmnh3dVhaFIOHqTJTFOHHMfet/IEW
	99YEjvvywoBIEvgUdvnn+a4SmnP4DpXPZU9qsPlEHjEIC0ExxXRoUMLk7y3v1uAphZsNqaIpr0LUz
	2S9YC8B/CJwwuoTUc3mqj6+T8kj5EFRS40tMCItUUX9DnpZnJEQh2em0zEhrvAGJDglFjKrfNW92B
	EctQ5U1D13NvJekQMWHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3ul-0003oq-FQ; Thu, 19 Dec 2019 22:04:59 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uH-0003X0-4A
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 97DF14B8F;
 Thu, 19 Dec 2019 23:04:27 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1307d8a0;
 Thu, 19 Dec 2019 23:04:17 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:12 +0100
Message-Id: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140429_355431_E0A70F1A 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ucert 0/9] GitLab CI, tests,
 fixes and improvements
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBhZGRzIEdpdExhYiBDSSBzdXBwb3J0LCB1bml0IHRlc3Rz
IHBhc3NlZCB0aHJvdWdoIFZhbGdyaW5kLAp1bml0IHRlc3RzIGNvdmVyZWQgd2l0aCBDbGFuZydz
IHtBZGRyZXNzLExlYWssVW5kZWZpbmVkQmVoYXZpb3J9U2FuaXRpemVyIGFuZApmZXcgZml4ZXMg
dW5jb3ZlcmVkIGJ5IHRoZSBuZXcgdGVzdCBzdWl0ZS4KClBldHIgxaB0ZXRpYXIgKDkpOgogIGNt
YWtlOiBhZGQgcHJvcGVyIGluY2x1ZGUgYW5kIGxpYnJhcnkgZGVwZW5kZW5jaWVzCiAgYWRkIGlu
aXRpYWwgR2l0TGFiIENJIHN1cHBvcnQKICBjbWFrZTogZW5hYmxlIGhhcmRlbmluZyBjb21waWxl
ciBmbGFncyBhbmQgZml4IHRoZSByZXBvcnRlZCBpc3N1ZXMKICBjbWFrZTogcmVpbmRlbnQgdGhl
IGZpbGUKICBjbWFrZTogc3BsaXQgdXNpZ24gYml0cyBpbnRvIHN0YXRpYyBsaWJyYXJ5CiAgYWRk
IGNyYW0gYmFzZWQgdW5pdCB0ZXN0cwogIGZpeCBwb3NzaWJseSBnYXJiYWdlIHZhbHVlIHJldHVy
bmVkIGluIGNlcnRfcHJvY2Vzc19yZXZva2VyCiAgZml4IGxlYWtpbmcgbWVtb3J5IGluIGNlcnRf
ZHVtcF9ibG9iCiAgZml4IGNlcnRpZmljYXRlIGJsb2IgcGFyc2luZyB2dWxuZXJhYmlsaXR5IGJ5
IHVzaW5nIGJsb2JfcGFyc2VfdW50cnVzdGVkCgogLmdpdGxhYi1jaS55bWwgICAgICAgICAgICAg
ICAgICAgIHwgICA2ICsrKwogQ01ha2VMaXN0cy50eHQgICAgICAgICAgICAgICAgICAgIHwgIDQ4
ICsrKysrKysrKysrKysrKysrLS0tLS0KIHRlc3RzL0NNYWtlTGlzdHMudHh0ICAgICAgICAgICAg
ICB8ICAxNCArKysrKysrCiB0ZXN0cy9jcmFtL0NNYWtlTGlzdHMudHh0ICAgICAgICAgfCAgMjEg
KysrKysrKysrKwogdGVzdHMvY3JhbS9pbnB1dHMvaW52YWxpZC51Y2VydCAgIHwgQmluIDAgLT4g
MzYyIGJ5dGVzCiB0ZXN0cy9jcmFtL2lucHV0cy9rZXktYnVpbGQudWNlcnQgfCBCaW4gMCAtPiAz
NTYgYnl0ZXMKIHRlc3RzL2NyYW0vdGVzdF91Y2VydC50ICAgICAgICAgICB8ICA2NSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKIHVjZXJ0LmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAzMSArKysrKysrKystLS0tLQogOCBmaWxlcyBjaGFuZ2VkLCAxNjUgaW5zZXJ0aW9ucygr
KSwgMjAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgLmdpdGxhYi1jaS55bWwKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9DTWFrZUxpc3RzLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0
IHRlc3RzL2NyYW0vQ01ha2VMaXN0cy50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9jcmFt
L2lucHV0cy9pbnZhbGlkLnVjZXJ0CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvY3JhbS9pbnB1
dHMva2V5LWJ1aWxkLnVjZXJ0CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvY3JhbS90ZXN0X3Vj
ZXJ0LnQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
