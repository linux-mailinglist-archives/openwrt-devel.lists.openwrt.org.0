Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF4334799
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 15:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DUIya9KDtiopnqUVWd6G1yRRtR4aWR6iUsWfQx+GQS0=; b=lxFQQq4XG7yDiC
	8SJomjKWTAnwFLG/gNfvMLYoDHp/So0zc3wHoTx8mFJila+TwQgKJ1St6IbxoNKC66/U1fQeBK0EB
	xcOtGAQRtgs7sFlunA8llBDFqDVpB8+XN6qANjFM0SKmff/WZTiXibv/fOgFw6Bt3qxCutjSBUo8J
	/ZCXwY84KmBEo57VbUNCBcWOy+WF6LboVLwWpQMkpW1f0DqD/C1sb3TQ8aPzJ1HIYrquOaW845XBa
	qzHtJy0X9iHVJ/xmNv2vQpLJR19yjtHCqONmhddGLHcICr5LfEEqQx6ndi5PJIHAt2CMY6EqmOrwr
	GnWRXFAJ61s2ZZLtGX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY98k-0006wm-F7; Tue, 04 Jun 2019 13:06:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY98e-0006w7-7j
 for openwrt-devel@lists.openwrt.org; Tue, 04 Jun 2019 13:06:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 03E4F4BA9;
 Tue,  4 Jun 2019 15:05:56 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 124eff25;
 Tue, 4 Jun 2019 15:05:54 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  4 Jun 2019 15:05:41 +0200
Message-Id: <1559653541-26682-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_060604_423253_5B9269DA 
X-CRM114-Status: UNSURE (   8.82  )
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
Subject: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix always
 missing first event
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0IGFmYzA1NmQ3ZGM4MyAoImdwaW8tYnV0dG9uLWhvdHBsdWc6IHN1cHBvcnQgaW50ZXJy
dXB0CnByb3BlcnRpZXMiKSBjaGFuZ2VkIHRoZSBncGlvLWtleXMgaW50ZXJydXB0IGhhbmRsaW5n
IGxvZ2ljIGluIGEgd2F5LAp0aGF0IGl0IGFsd2F5cyBtaXNzZXMgZmlyc3QgZXZlbnQsIHdoaWNo
IGNhdXNlcyBpc3N1ZXMgd2l0aCByYy5idXR0b24Kc2NyaXB0cywgc28gdGhpcyBwYXRjaCByZXN0
b3JlcyB0aGUgcHJldmlvdXMgYmVoYXZpb3VyLgoKQ2M6IENocmlzdGlhbiBMYW1wYXJ0ZXIgPGNo
dW5rZWV5QGdtYWlsLmNvbT4KRml4ZXM6IGFmYzA1NmQ3ZGM4MyAoImdwaW8tYnV0dG9uLWhvdHBs
dWc6IHN1cHBvcnQgaW50ZXJydXB0IHByb3BlcnRpZXMiKQpSZXBvcnRlZC1ieTogS3Jpc3RpYW4g
RXZlbnNlbiA8a3Jpc3RpYW4uZXZlbnNlbkBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogcGFja2FnZS9rZXJuZWwvZ3Bpby1idXR0b24t
aG90cGx1Zy9zcmMvZ3Bpby1idXR0b24taG90cGx1Zy5jIHwgNSArLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2Uv
a2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYyBiL3Bh
Y2thZ2Uva2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcu
YwppbmRleCBmNDI5ZjhjMDI3MWYuLjgxNjk3ZTljNGNmNiAxMDA2NDQKLS0tIGEvcGFja2FnZS9r
ZXJuZWwvZ3Bpby1idXR0b24taG90cGx1Zy9zcmMvZ3Bpby1idXR0b24taG90cGx1Zy5jCisrKyBi
L3BhY2thZ2Uva2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBs
dWcuYwpAQCAtMzQ0LDEwICszNDQsNyBAQCBzdGF0aWMgdm9pZCBncGlvX2tleXNfaXJxX3dvcmtf
ZnVuYyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAKIAlpZiAoc3RhdGUgIT0gYmRhdGEtPmxh
c3Rfc3RhdGUpIHsKIAkJdW5zaWduZWQgaW50IHR5cGUgPSBiZGF0YS0+Yi0+dHlwZSA/OiBFVl9L
RVk7Ci0KLQkJaWYgKGJkYXRhLT5sYXN0X3N0YXRlICE9IC0xIHx8IHR5cGUgPT0gRVZfU1cpCi0J
CQlidXR0b25faG90cGx1Z19ldmVudChiZGF0YSwgdHlwZSwgc3RhdGUpOwotCisJCWJ1dHRvbl9o
b3RwbHVnX2V2ZW50KGJkYXRhLCB0eXBlLCBzdGF0ZSk7CiAJCWJkYXRhLT5sYXN0X3N0YXRlID0g
c3RhdGU7CiAJfQogfQotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
