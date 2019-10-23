Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A5BE185C
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQZW6m/s1gZpkTJdOaNbw7Db+eQlhKTf4qEMnzPEsJo=; b=S51CX4whYTnWME
	J4C+ikV2tlvknPAA3/qL6ggjf/ZYBKSWtLYBrdMOIuG9+2P/Qf8wYolaBMI/VP5axcMwXiBWYH6+r
	PaxpuBysgwxR+qJvhpIcrSFgIX0sFT8TKFILuPvT/HpR+iIQTKUSBgczioPxadr12yP8N5/X41n0k
	n4LOpqhT8W2PLIVwY1fxrADME/DjK+DsfelhIHMgLzy8NruZc29fO/fGK9he2cTxF4iNZjLHf/pFV
	s9o9QGqHZx9Mu9WkpqUbOeU3zLm82JwW+vgEpfPB54x9u+w52RSHL0VF5EayvnFKsPRm4lCmqAv7j
	fA9/bonwShlKv9Fw1OSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEIV-00040v-Ox; Wed, 23 Oct 2019 10:55:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEH5-00010v-Cb
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:53:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E658D5244;
 Wed, 23 Oct 2019 12:53:47 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ac80124a;
 Wed, 23 Oct 2019 12:53:37 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:53:39 +0200
Message-Id: <20191023105339.16326-9-ynezz@true.cz>
In-Reply-To: <20191023105339.16326-1-ynezz@true.cz>
References: <20191023105339.16326-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035355_612072_6BF6F25F 
X-CRM114-Status: UNSURE (   8.47  )
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
Subject: [OpenWrt-Devel] [PATCH fwtool 8/8] fix possible garbage in
 unitialized char* struct members
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBoYXMgcmVwb3J0ZWQgZm9sbG93aW5nIGlz
c3VlczoKCiBjcmMzMi5oOjQ0OjMyOiB3YXJuaW5nOiBUaGUgcmlnaHQgb3BlcmFuZCBvZiAnXicg
aXMgYSBnYXJiYWdlIHZhbHVlCiAgICAgICAgICAgICAgICB2YWwgPSBjcmNfdGFibGVbKHVpbnQ4
X3QpdmFsIF4gKih1aW50OF90KilidWZdIF4gKHZhbCA+PiA4KTsKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXiB+fn5+fn5+fn5+fn5+fgoKY3BwY2hlY2sgdmVy
c2lvbiAxLjg5IGhhcyByZXBvcnRlZCBmb2xsb3dpbmcgaXNzdWVzOgoKIGZ3dG9vbC5jOjI2MDo5
OiBlcnJvcjogVW5pbml0aWFsaXplZCB2YXJpYWJsZTogZGVzdCBbdW5pbml0dmFyXQogIG1lbWNw
eShkZXN0LCBkYnVmLT5jdXIgKyBkYnVmLT5jdXJfbGVuIC0gY3VyX2xlbiwgY3VyX2xlbik7CiAg
ICAgICAgIF4KIGZ3dG9vbC5jOjMzMzoyNzogbm90ZTogQ2FsbGluZyBmdW5jdGlvbiAnZXh0cmFj
dF90YWlsJywgMm5kIGFyZ3VtZW50ICcmdHInIHZhbHVlIGlzIDxVbmluaXQ+CiAgIGlmIChleHRy
YWN0X3RhaWwoJmRidWYsICZ0ciwgc2l6ZW9mKHRyKSkpIHsKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0t
CiBmd3Rvb2wuYyB8IDE1ICsrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnd0b29sLmMgYi9md3Rvb2wu
YwppbmRleCBlOTI1YjBiZjVlNjUuLjYzNDBkYjlkYTYzYyAxMDA2NDQKLS0tIGEvZnd0b29sLmMK
KysrIGIvZnd0b29sLmMKQEAgLTE0NSwxMSArMTQ1LDEyIEBAIGFwcGVuZF90cmFpbGVyKEZJTEUg
Km91dCwgc3RydWN0IGZ3aW1hZ2VfdHJhaWxlciAqdHIpCiBzdGF0aWMgaW50CiBhZGRfbWV0YWRh
dGEoc3RydWN0IGZ3aW1hZ2VfdHJhaWxlciAqdHIpCiB7Ci0Jc3RydWN0IGZ3aW1hZ2VfaGVhZGVy
IGhkciA9IHt9OworCXN0cnVjdCBmd2ltYWdlX2hlYWRlciBoZHI7CiAKIAl0ci0+dHlwZSA9IEZX
SU1BR0VfSU5GTzsKIAl0ci0+c2l6ZSA9IHNpemVvZihoZHIpICsgc2l6ZW9mKCp0cik7CiAKKwlt
ZW1zZXQoJmhkciwgMCwgc2l6ZW9mKGhkcikpOwogCXRyYWlsZXJfdXBkYXRlX2NyYyh0ciwgJmhk
ciwgc2l6ZW9mKGhkcikpOwogCWZ3cml0ZSgmaGRyLCBzaXplb2YoaGRyKSwgMSwgZmlybXdhcmVf
ZmlsZSk7CiAKQEAgLTE4MSwxMyArMTgyLDE1IEBAIGFkZF9zaWduYXR1cmUoc3RydWN0IGZ3aW1h
Z2VfdHJhaWxlciAqdHIpCiBzdGF0aWMgaW50CiBhZGRfZGF0YShjb25zdCBjaGFyICpuYW1lKQog
ewotCXN0cnVjdCBmd2ltYWdlX3RyYWlsZXIgdHIgPSB7Ci0JCS5tYWdpYyA9IGNwdV90b19iZTMy
KEZXSU1BR0VfTUFHSUMpLAotCQkuY3JjMzIgPSB+MCwKLQl9OworCXN0cnVjdCBmd2ltYWdlX3Ry
YWlsZXIgdHI7CiAJaW50IGZpbGVfbGVuID0gMDsKIAlpbnQgcmV0ID0gMDsKIAorCW1lbXNldCgm
dHIsIDAsIHNpemVvZih0cikpOworCisJdHIuY3JjMzIgPSB+MDsKKwl0ci5tYWdpYyA9IGNwdV90
b19iZTMyKEZXSU1BR0VfTUFHSUMpOworCiAJZmlybXdhcmVfZmlsZSA9IGZvcGVuKG5hbWUsICJy
KyIpOwogCWlmICghZmlybXdhcmVfZmlsZSkgewogCQltc2coIkZhaWxlZCB0byBvcGVuIGZpcm13
YXJlIGZpbGVcbiIpOwpAQCAtMjg5LDYgKzI5Miw4IEBAIGV4dHJhY3RfZGF0YShjb25zdCBjaGFy
ICpuYW1lKQogCXZvaWQgKmJ1ZjsKIAlib29sIG1ldGFkYXRhX2tlZXAgPSBmYWxzZTsKIAorCW1l
bXNldCgmdHIsIDAsIHNpemVvZih0cikpOworCiAJZmlybXdhcmVfZmlsZSA9IG9wZW5fZmlsZShu
YW1lLCBmYWxzZSk7CiAJaWYgKCFmaXJtd2FyZV9maWxlKSB7CiAJCW1zZygiRmFpbGVkIHRvIG9w
ZW4gZmlybXdhcmUgZmlsZVxuIik7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
