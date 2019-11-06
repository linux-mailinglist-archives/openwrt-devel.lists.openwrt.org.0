Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D01F1B7D
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 17:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nDTj+f4kIqpgGR6Ific5oOqQQQdcaRkeX+m2/l4tK9k=; b=IhRs+6ntJlgs3b
	532Tc6b+sLCGTlh7aRkofqywLMc7JUh6HSbrTRwM9eX5H+JTz7Ef3ODAa4I6GqIpg2AV1CGock50E
	R90+M6/bokhwGa1w4J/Ec4dJlBi480gqUActLmkZUb48hNAgYhJO4lDoxRRdw6uocaG5op/3LOjtk
	lvBGOzIfO29avtgvoTvYRRYgoWhs604Tt4iWBgPcPplK7Jj1LJeSCio5QmhWxA5onspe6Vad46Q0I
	/uqFaCqRkrNDxQ/XJvLtcDeI9/ASAsdTg+eOV9VHW392KjbErTMD3TVWeI1dn5I3jRLE8OPBFRG01
	zxy9uSzr+hOYntm7V5Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSONZ-0003V9-Cq; Wed, 06 Nov 2019 16:41:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSON7-00031j-7R
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 16:41:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BB4954E5F;
 Wed,  6 Nov 2019 17:41:26 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 5f0f54e7;
 Wed, 6 Nov 2019 17:41:16 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 17:41:18 +0100
Message-Id: <20191106164120.5329-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_084129_422630_DCDEA4A7 
X-CRM114-Status: UNSURE (   6.11  )
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
Subject: [OpenWrt-Devel] [PATCH libnl-tiny 1/3] use offsetof macro to make
 scan-build happy
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBjb21wbGFpbnMgYWJvdXQgZm9sbG93aW5n
OgoKIGNhY2hlLmM6MTA2OjI6IHdhcm5pbmc6IERlcmVmZXJlbmNlIG9mIG51bGwgcG9pbnRlcgog
ICAgICAgIG5sX2xpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShvYmosIHRtcCwgJmNhY2hlLT5jX2l0
ZW1zLCBjZV9saXN0KQogICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgogaW5jbHVkZS9uZXRsaW5rL2xpc3QuaDo4Mzoy
MDogbm90ZTogZXhwYW5kZWQgZnJvbSBtYWNybyAnbmxfbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZl
JwogICAgICAgICAgICAgcG9zID0gbiwgbiA9IG5sX2xpc3RfZW50cnkobi0+bWVtYmVyLm5leHQs
IHR5cGVvZigqbiksIG1lbWJlcikpCiAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgogaW5jbHVkZS9uZXRsaW5r
L2xpc3QuaDo2MDoyOiBub3RlOiBleHBhbmRlZCBmcm9tIG1hY3JvICdubF9saXN0X2VudHJ5Jwog
ICAgICAgIG5sX2NvbnRhaW5lcl9vZihwdHIsIHR5cGUsIG1lbWJlcikKICAgICAgICBefn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiBpbmNsdWRlL25ldGxpbmsvbGlzdC5oOjU2OjU1
OiBub3RlOiBleHBhbmRlZCBmcm9tIG1hY3JvICdubF9jb250YWluZXJfb2YnCiAgICAgICAgY29u
c3QgdHlwZW9mKCAoKHR5cGUgKikwKS0+bWVtYmVyICkgKl9fbXB0ciA9IChwdHIpOyAgICBcCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+
CgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIGluY2x1
ZGUvbmV0bGluay9saXN0LmggfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldGxpbmsvbGlzdC5oIGIv
aW5jbHVkZS9uZXRsaW5rL2xpc3QuaAppbmRleCBjNjg3NmE3N2Y3NmMuLjZlYWUyMTYwMzI3YSAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9uZXRsaW5rL2xpc3QuaAorKysgYi9pbmNsdWRlL25ldGxpbmsv
bGlzdC5oCkBAIC0xMiw2ICsxMiw4IEBACiAjaWZuZGVmIE5FVExJTktfTElTVF9IXwogI2RlZmlu
ZSBORVRMSU5LX0xJU1RfSF8KIAorI2luY2x1ZGUgPHN0ZGRlZi5oPgorCiBzdHJ1Y3QgbmxfbGlz
dF9oZWFkCiB7CiAJc3RydWN0IG5sX2xpc3RfaGVhZCAqCW5leHQ7CkBAIC01NCw3ICs1Niw3IEBA
IHN0YXRpYyBpbmxpbmUgaW50IG5sX2xpc3RfZW1wdHkoc3RydWN0IG5sX2xpc3RfaGVhZCAqaGVh
ZCkKIAogI2RlZmluZSBubF9jb250YWluZXJfb2YocHRyLCB0eXBlLCBtZW1iZXIpICh7CQkJXAog
ICAgICAgICBjb25zdCB0eXBlb2YoICgodHlwZSAqKTApLT5tZW1iZXIgKSAqX19tcHRyID0gKHB0
cik7CVwKLSAgICAgICAgKHR5cGUgKikoIChjaGFyICopX19tcHRyIC0gKChzaXplX3QpICYoKHR5
cGUgKikwKS0+bWVtYmVyKSk7fSkKKyAgICAgICAgKHR5cGUgKikgKChjaGFyICopIF9fbXB0ciAt
IChvZmZzZXRvZih0eXBlLCBtZW1iZXIpKSk7fSkKIAogI2RlZmluZSBubF9saXN0X2VudHJ5KHB0
ciwgdHlwZSwgbWVtYmVyKSBcCiAJbmxfY29udGFpbmVyX29mKHB0ciwgdHlwZSwgbWVtYmVyKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
