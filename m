Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB43A2A44B
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 13:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAUFplwhnymbMnnfCV/1tFWS56UQIxyk+k/mo/tmLWw=; b=cM1XB0eyteIOrz
	b0AbQNOkllsJ1Hd8PTqf8gbrP66YGqCK0knMyBk4HoFi1MdTuLehM19bOvyyyuhP8VxrxeIKmChVM
	P078C4B9waxsZ3YTD3/ntgj363XWci8oROs6T5Fp6Q1dAHv8stWmOmne8OGFfArSuD0YfNYtG9xlc
	tj71Tpnqjv+BpB0Q942b38Rzm6yZgVmOyyMcobOuTYhEIHf0BSh8m8F14z3RZWf7otrE7AmEpUmvr
	gglhG+wLodiBU1Gct7CNKUCi/d+0Wl863ru//Gj/k76HXihQ7qxJVMNwCs9hLukcNhbgrRtI9rF2N
	02a/+yULq1qWs0U+DcOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUVKr-0003dg-Tc; Sat, 25 May 2019 11:59:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUVKG-0002y8-5T
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 11:59:03 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7DAD53A34;
 Sat, 25 May 2019 13:58:57 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a556b046;
 Sat, 25 May 2019 13:58:56 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 May 2019 13:58:39 +0200
Message-Id: <1558785521-31779-5-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558785521-31779-1-git-send-email-ynezz@true.cz>
References: <1558785521-31779-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_045900_355828_E7777E8A 
X-CRM114-Status: UNSURE (   7.54  )
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
Subject: [OpenWrt-Devel] [PATCH 4/6] ar71xx: ag71xx: remove unused
 SIOCETHTOOL ioctl handling
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
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBpb2N0bCBpcyBjdXJyZW50bHkgcm91dGVkIHRocm91Z2ggZ2VuZXJpYyBpbnRlcmZhY2Ug
Y29kZToKCiAgZGV2X2lvY3RsCiAgICBkZXZfZXRodG9vbAogICAgICBfX2V0aHRvb2xfZ2V0X2xp
bmtfa3NldHRpbmdzCiAgICAgICAgcGh5X2V0aHRvb2xfaW9jdGwKCkNjOiBGZWxpeCBGaWV0a2F1
IDxuYmRAbmJkLm5hbWU+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+Ci0tLQogLi4uL2ZpbGVzL2RyaXZlcnMvbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2Fn
NzF4eF9tYWluLmMgICAgfCAxMCAtLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2FyNzF4eC9maWxlcy9kcml2ZXJzL25l
dC9ldGhlcm5ldC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhfbWFpbi5jIGIvdGFyZ2V0L2xpbnV4L2Fy
NzF4eC9maWxlcy9kcml2ZXJzL25ldC9ldGhlcm5ldC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhfbWFp
bi5jCmluZGV4IDU0MmQ0OTE1YjMwMC4uMmMwYjRkMjQxMDYzIDEwMDY0NAotLS0gYS90YXJnZXQv
bGludXgvYXI3MXh4L2ZpbGVzL2RyaXZlcnMvbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2Fn
NzF4eF9tYWluLmMKKysrIGIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9maWxlcy9kcml2ZXJzL25ldC9l
dGhlcm5ldC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhfbWFpbi5jCkBAIC04NDUsMTggKzg0NSw4IEBA
IGVycl9kcm9wOgogc3RhdGljIGludCBhZzcxeHhfZG9faW9jdGwoc3RydWN0IG5ldF9kZXZpY2Ug
KmRldiwgc3RydWN0IGlmcmVxICppZnIsIGludCBjbWQpCiB7CiAJc3RydWN0IGFnNzF4eCAqYWcg
PSBuZXRkZXZfcHJpdihkZXYpOwotCWludCByZXQ7CiAKIAlzd2l0Y2ggKGNtZCkgewotCWNhc2Ug
U0lPQ0VUSFRPT0w6Ci0JCWlmIChhZy0+cGh5X2RldiA9PSBOVUxMKQotCQkJYnJlYWs7Ci0KLQkJ
c3Bpbl9sb2NrX2lycSgmYWctPmxvY2spOwotCQlyZXQgPSBwaHlfZXRodG9vbF9pb2N0bChhZy0+
cGh5X2RldiwgKHZvaWQgKikgaWZyLT5pZnJfZGF0YSk7Ci0JCXNwaW5fdW5sb2NrX2lycSgmYWct
PmxvY2spOwotCQlyZXR1cm4gcmV0OwotCiAJY2FzZSBTSU9DU0lGSFdBRERSOgogCQlpZiAoY29w
eV9mcm9tX3VzZXIKIAkJCShkZXYtPmRldl9hZGRyLCBpZnItPmlmcl9kYXRhLCBzaXplb2YoZGV2
LT5kZXZfYWRkcikpKQotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
