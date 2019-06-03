Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829FA33B1F
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 00:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMcJvBMGXnLJP048c1wH+8s1ZNhhcdwod80+3UDO9Kw=; b=EaY60qYyvtZ9pD
	b76sOlMkPo2+H311eixSIaRSiVdo8asC3QmABmg63oEuHbXGsx+gXG1zDcEY2J+HwlxZ1jdVrwkwW
	FTEUkrjpdWiQS6v1eIvPWMTnUAUEh4n5XbwQd0B9FHYU3Mb1S2A3TbQDgGo2UvYjj3yXGLVtvVia6
	1fTHiaOxf08n6hRrdeINvOAVTgpFjMVlIqHdPdKK7H0uAstRd3N8QD8F61QjFppSvC3/SfT7Y2uVe
	tfhIoReQeChqcxUMEcosJvcqQ5agzot3cn8twdA6NNbSDcvJVpIzwWtoYywtm0uEntQsGosUCzpVi
	uKlnmea3HY66ZBb5VUwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvMy-0001tg-Rh; Mon, 03 Jun 2019 22:23:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvMi-0001jB-GG
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 22:23:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9097A4931;
 Tue,  4 Jun 2019 00:23:38 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 763f7bdb;
 Tue, 4 Jun 2019 00:23:36 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  4 Jun 2019 00:23:29 +0200
Message-Id: <1559600609-12539-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559600609-12539-1-git-send-email-ynezz@true.cz>
References: <1559600609-12539-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_152340_711229_EF2F5969 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] gpio-button-hotplug: fix wrong initial
 seen value
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Q3VycmVudGx5IHRoZSBnZW5lcmF0ZWQgZXZlbnQgY29udGFpbnMgd3Jvbmcgc2VlbiB2YWx1ZSwg
d2hlbiB0aGUgYnV0dG9uCmlzIHByZXNzZWQgZm9yIHRoZSBmaXJzdCB0aW1lOgoKIHJtbW9kIGdw
aW9fYnV0dG9uX2hvdHBsdWc7IG1vZHByb2JlIGdwaW9fYnV0dG9uX2hvdHBsdWcKIFsgcHJlc3Np
bmcgdGhlIHdwcyBrZXkgaW1tZWRpYXRlbHkgYWZ0ZXIgbW9kcHJvYmUgXQogZ3Bpby1rZXlzOiBj
cmVhdGUgZXZlbnQsIG5hbWU9d3BzLCBzZWVuPTEwODgsIHByZXNzZWQ9MQoKU28gdGhpcyBwYXRj
aCBhZGRzIGEgY2hlY2sgZm9yIHRoaXMgY29ybmVyIGNhc2UgYW5kIG1ha2VzIHNlZW49MCBpZiB0
aGUKYnV0dG9uIGlzIHByZXNzZWQgZm9yIHRoZSBmaXJzdCB0aW1lLgoKU2lnbmVkLW9mZi1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBwYWNrYWdlL2tlcm5lbC9ncGlvLWJ1
dHRvbi1ob3RwbHVnL3NyYy9ncGlvLWJ1dHRvbi1ob3RwbHVnLmMgfCAzICsrKwogMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2Uva2VybmVsL2dwaW8t
YnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYyBiL3BhY2thZ2Uva2VybmVs
L2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYwppbmRleCBkODE4
OThmOTMyYTEuLmY0MjlmOGMwMjcxZiAxMDA2NDQKLS0tIGEvcGFja2FnZS9rZXJuZWwvZ3Bpby1i
dXR0b24taG90cGx1Zy9zcmMvZ3Bpby1idXR0b24taG90cGx1Zy5jCisrKyBiL3BhY2thZ2Uva2Vy
bmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYwpAQCAtMjUz
LDYgKzI1Myw5IEBAIHN0YXRpYyB2b2lkIGJ1dHRvbl9ob3RwbHVnX2V2ZW50KHN0cnVjdCBncGlv
X2tleXNfYnV0dG9uX2RhdGEgKmRhdGEsCiAJaWYgKGJ0biA8IDApCiAJCXJldHVybjsKIAorCWlm
IChwcml2LT5zZWVuID09IDApCisJCXByaXYtPnNlZW4gPSBzZWVuOworCiAJYnV0dG9uX2hvdHBs
dWdfY3JlYXRlX2V2ZW50KGJ1dHRvbl9tYXBbYnRuXS5uYW1lLCB0eXBlLAogCQkJKHNlZW4gLSBw
cml2LT5zZWVuKSAvIEhaLCB2YWx1ZSk7CiAJcHJpdi0+c2VlbiA9IHNlZW47Ci0tIAoxLjkuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
