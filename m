Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E414D1775A3
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 13:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qW8MRHgfuPJNvlFyZFWym106jkN84ozq/rlLiCeTK/M=; b=dDyqWBAPCBcAV+
	gAGpADIxbitYRxzoNtKRelgo9pV784V7MlHXe24BBHzZnvGfdaBC44/0ZRGysZDkdgJsCpH/Kp/q2
	WR5t4op6eIPt3Lhc8SndxMS0nFrUJwDl2879rRCpyuLk6176MBTWpUV7uptVzTiZZy2a08V0xSM4w
	u96Ob7xbxhovSiPkdFupyxbwMqw5dChb6u6XoHR7/zUS4gCoNIz79WJChtHTGoJcQ00NvXoxoQbo5
	dLxehnW1Q2UwgNMjlaOQvWSshUhIbdOr9LLirqih5XXyJABIMKTZLQjZ+0DHYEHnR7A6U2FEgeGcw
	8ajzOca6UZztGyTb2BXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96Jz-0007oU-As; Tue, 03 Mar 2020 12:06:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96Js-0007nu-F3
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 12:06:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 30875406E;
 Tue,  3 Mar 2020 13:06:39 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 7f1f4835;
 Tue, 3 Mar 2020 13:06:26 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 13:06:37 +0100
Message-Id: <20200303120637.10578-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_040640_652996_76475128 
X-CRM114-Status: UNSURE (   8.10  )
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
Subject: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: remove duplicate
 logging text
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

UmVtb3ZlcyBvbmUgb2YgdGhlIGR1cGxpY2F0ZSBgZ3Bpby1rZXlzYCB3b3JkcyBmb3VuZCBpbiB0
aGUgbG9nczoKCiBncGlvLWtleXMgZ3Bpby1rZXlzOiBncGlvLWtleXNkb2VzIG5vdCBzdXBwb3J0
IGtleSBjb2RlOjE0MwoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4KLS0tCiAuLi4va2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhv
dHBsdWcuYyAgICB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2Uva2VybmVsL2dwaW8tYnV0dG9uLWhv
dHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYyBiL3BhY2thZ2Uva2VybmVsL2dwaW8tYnV0
dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYwppbmRleCAzZThlMGVhMjY4NDYu
Ljk1NzVjNjI0NWI3ZSAxMDA2NDQKLS0tIGEvcGFja2FnZS9rZXJuZWwvZ3Bpby1idXR0b24taG90
cGx1Zy9zcmMvZ3Bpby1idXR0b24taG90cGx1Zy5jCisrKyBiL3BhY2thZ2Uva2VybmVsL2dwaW8t
YnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8tYnV0dG9uLWhvdHBsdWcuYwpAQCAtNTE3LDIwICs1MTcs
MjAgQEAgc3RhdGljIGludCBncGlvX2tleXNfYnV0dG9uX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYsCiAJCXVuc2lnbmVkIGludCBncGlvID0gYnV0dG9uLT5ncGlvOwogCiAJCWlm
IChidXR0b24tPndha2V1cCkgewotCQkJZGV2X2VycihkZXYsIERSVl9OQU1FICJkb2VzIG5vdCBz
dXBwb3J0IHdha2V1cFxuIik7CisJCQlkZXZfZXJyKGRldiwgImRvZXMgbm90IHN1cHBvcnQgd2Fr
ZXVwXG4iKTsKIAkJCXJldHVybiAtRUlOVkFMOwogCQl9CiAKIAkJYmRhdGEtPm1hcF9lbnRyeSA9
IGJ1dHRvbl9nZXRfaW5kZXgoYnV0dG9uLT5jb2RlKTsKIAkJaWYgKGJkYXRhLT5tYXBfZW50cnkg
PCAwKSB7Ci0JCQlkZXZfd2FybihkZXYsIERSVl9OQU1FICJkb2VzIG5vdCBzdXBwb3J0IGtleSBj
b2RlOiV1XG4iLAorCQkJZGV2X3dhcm4oZGV2LCAiZG9lcyBub3Qgc3VwcG9ydCBrZXkgY29kZTol
dVxuIiwKIAkJCQlidXR0b24tPmNvZGUpOwogCQkJY29udGludWU7CiAJCX0KIAogCQlpZiAoIShi
dXR0b24tPnR5cGUgPT0gMCB8fCBidXR0b24tPnR5cGUgPT0gRVZfS0VZIHx8CiAJCSAgICAgIGJ1
dHRvbi0+dHlwZSA9PSBFVl9TVykpIHsKLQkJCWRldl93YXJuKGRldiwgRFJWX05BTUUgIm9ubHkg
c3VwcG9ydHMgYnV0dG9ucyBvciBzd2l0Y2hlc1xuIik7CisJCQlkZXZfd2FybihkZXYsICJvbmx5
IHN1cHBvcnRzIGJ1dHRvbnMgb3Igc3dpdGNoZXNcbiIpOwogCQkJY29udGludWU7CiAJCX0KIAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
