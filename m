Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3086177592
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 13:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=02yaSS3ecat0BXfBSfhhFfELVa7I0GR1pFeCW1ThTJs=; b=nWldZsNZlX4YFv
	nxHjkykp1ODr+LIuF1sN60FhecWYh2bRhjl+7ubSO9Ap5VQ5ceVJr38bMd4cOOhKJz8ET1pUR8pwR
	MR4UUimKg7AJyLDoFMM9R8ER0Allo94ncKJk4EoBIy1rIYZ1wCM7IRO7VaYLezhabFPPBmKrxYThy
	E3lEkMULkWDLs1Xog9WHzNgt04+pb3MAwYdJpK3D0G/zT9gmQa8obXcy6i5habao9I4+phxiPkc85
	iIVoIxCbqFaHw1nr4XMpESQl5WlFf6k1J9xNVhJstvAi360qllQWkyuDlZ2YBTELJvCGQlTtf5i1n
	qXd89Pjnox69RzFeJVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96Ei-0005eb-K2; Tue, 03 Mar 2020 12:01:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96Eb-0005e5-QW
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 12:01:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A284D4033;
 Tue,  3 Mar 2020 13:01:09 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 4b3e2e3e;
 Tue, 3 Mar 2020 13:00:56 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 13:01:03 +0100
Message-Id: <20200303120103.10583-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_040114_011374_72502593 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] scripts/getver.sh: silence rev-list errors
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

U2hhbGxvdyBjb3BpZXMgYXJlIHF1aXRlIGNvbW1vbiBvbiBDSSBwbGF0Zm9ybXMgbm93YWRheXMs
IG1ha2luZyBSRUJPT1QKdGFnIHVuYXZhaWxhYmxlLCB0aHVzIHByb2R1Y2luZyBmb2xsb3dpbmcg
Y29uZnVzaW5nIGVycm9ycyBpbiB0aGUgYnVpbGQKbG9nczoKCiBmYXRhbDogSW52YWxpZCByZXZp
c2lvbiByYW5nZSBlZTUzYTI0MGFjOTAyZGM4MzIwOTAwOGEyNjcxZTdmZGNmNTU5NTdhLi5IRUFE
CiBmYXRhbDogSW52YWxpZCByZXZpc2lvbiByYW5nZSBlZTUzYTI0MGFjOTAyZGM4MzIwOTAwOGEy
NjcxZTdmZGNmNTU5NTdhLi4wNDkzZDU3ZTA0Nzc0ZDQ3OTIxYTdkMjAxNGI1Njc0NTVkNWRjMTZi
CgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHNjcmlw
dHMvZ2V0dmVyLnNoIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9nZXR2ZXIuc2ggYi9zY3JpcHRz
L2dldHZlci5zaAppbmRleCA5MTc1ZjQxMWRiODMuLjQ5MjYwYTIyNjAzZiAxMDA3NTUKLS0tIGEv
c2NyaXB0cy9nZXR2ZXIuc2gKKysrIGIvc2NyaXB0cy9nZXR2ZXIuc2gKQEAgLTIwLDE4ICsyMCwx
OCBAQCB0cnlfZ2l0KCkgewogCWNhc2UgIiRHRVRfUkVWIiBpbgogCXIqKQogCQlHRVRfUkVWPSIk
KGVjaG8gJEdFVF9SRVYgfCB0ciAtZCAncicpIgotCQlCQVNFX1JFVj0iJChnaXQgcmV2LWxpc3Qg
JHtSRUJPT1R9Li5IRUFEIHwgd2MgLWwgfCBhd2sgJ3twcmludCAkMX0nKSIKKwkJQkFTRV9SRVY9
IiQoZ2l0IHJldi1saXN0ICR7UkVCT09UfS4uSEVBRCAyPi9kZXYvbnVsbCB8IHdjIC1sIHwgYXdr
ICd7cHJpbnQgJDF9JykiCiAJCVJFVj0iJChnaXQgcmV2LXBhcnNlIEhFQUR+JCgoQkFTRV9SRVYg
LSBHRVRfUkVWKSkpIgogCQk7OwogCSopCiAJCUJSQU5DSD0iJChnaXQgcmV2LXBhcnNlIC0tYWJi
cmV2LXJlZiBIRUFEKSIKIAkJT1JJR0lOPSIkKGdpdCByZXYtcGFyc2UgLS12ZXJpZnkgLS1zeW1i
b2xpYy1mdWxsLW5hbWUgJHtCUkFOQ0h9QHt1fSAyPi9kZXYvbnVsbCkiCiAJCVsgLW4gIiRPUklH
SU4iIF0gfHwgT1JJR0lOPSIkKGdpdCByZXYtcGFyc2UgLS12ZXJpZnkgLS1zeW1ib2xpYy1mdWxs
LW5hbWUgbWFzdGVyQHt1fSAyPi9kZXYvbnVsbCkiCi0JCVJFVj0iJChnaXQgcmV2LWxpc3QgJHtS
RUJPT1R9Li4kR0VUX1JFViB8IHdjIC1sIHwgYXdrICd7cHJpbnQgJDF9JykiCisJCVJFVj0iJChn
aXQgcmV2LWxpc3QgJHtSRUJPT1R9Li4kR0VUX1JFViAyPi9kZXYvbnVsbCB8IHdjIC1sIHwgYXdr
ICd7cHJpbnQgJDF9JykiCiAKIAkJaWYgWyAtbiAiJE9SSUdJTiIgXTsgdGhlbgogCQkJVVBTVFJF
QU1fQkFTRT0iJChnaXQgbWVyZ2UtYmFzZSAkR0VUX1JFViAkT1JJR0lOKSIKLQkJCVVQU1RSRUFN
X1JFVj0iJChnaXQgcmV2LWxpc3QgJHtSRUJPT1R9Li4kVVBTVFJFQU1fQkFTRSB8IHdjIC1sIHwg
YXdrICd7cHJpbnQgJDF9JykiCisJCQlVUFNUUkVBTV9SRVY9IiQoZ2l0IHJldi1saXN0ICR7UkVC
T09UfS4uJFVQU1RSRUFNX0JBU0UgMj4vZGV2L251bGwgfCB3YyAtbCB8IGF3ayAne3ByaW50ICQx
fScpIgogCQllbHNlCiAJCQlVUFNUUkVBTV9SRVY9MAogCQlmaQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
