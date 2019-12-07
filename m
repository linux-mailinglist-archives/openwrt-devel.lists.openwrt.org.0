Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A043E115FCC
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 00:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5TPeNC8ZGC61OuULdpaYZsgrkZjfgUQ3FYnhiqGtTU=; b=HyId05ZG+M2CrB
	umWrIMvJxYGP4w4JkBE4L1wpTYuCPB3xm/Zx1ZiGqZAy3dC+xfat7Y6nRUYkbTtTFCQ7ehKIJy4Bv
	fwp5BJh4PHUlafTObXCqzJ+GKgpDNnq6CoJja2rbNbZe5Ydk6o4Y3NaE1p5y8WeFPqCVPt7w3komB
	xQeJqxfqm0sZEESVtyAX+rVv0MzJfai9TxKplbOKAetVAsj5uzL4DV+D9gTsNxtqiXUN3IYdg4h+K
	CDpmM225fXbT6DZiDnZ+kUIWB54BqVXuxKkNzBc5WULDeK9Kj1GYcrR6zTcB+XH+PEwybyoLAplJj
	jh49JvrhxP9H8WpCMADA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idj6X-00038m-1H; Sat, 07 Dec 2019 23:03:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idj6Q-00037A-Af
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 23:03:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6907241A0;
 Sun,  8 Dec 2019 00:03:03 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 5bb8e673;
 Sun, 8 Dec 2019 00:02:53 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:52:54 +0100
Message-Id: <20191207225257.14135-2-ynezz@true.cz>
In-Reply-To: <20191207225257.14135-1-ynezz@true.cz>
References: <20191207225257.14135-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_150306_535681_B1029BCA 
X-CRM114-Status: UNSURE (   5.08  )
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
Subject: [OpenWrt-Devel] [PATCH uci 2/5] lua: add missing forward declaration
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

Rml4ZXMgZm9sbG93aW5nIHdhcm5pbmcgcmVwb3J0ZWQgYnkgY2xhbmctMTA6CgogIGx1YS91Y2ku
YzoxMDUwOjE6IGVycm9yOiBubyBwcmV2aW91cyBkZWNsYXJhdGlvbiBmb3Ig4oCYbHVhb3Blbl91
Y2nigJkgWy1XZXJyb3I9bWlzc2luZy1kZWNsYXJhdGlvbnNdCgpTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIGx1YS91Y2kuYyB8IDIgKysKIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9sdWEvdWNpLmMgYi9sdWEvdWNp
LmMKaW5kZXggZWNmYjI5OThkNzQ5Li4xOTZhMjViY2YwOGEgMTAwNjQ0Ci0tLSBhL2x1YS91Y2ku
YworKysgYi9sdWEvdWNpLmMKQEAgLTM2LDYgKzM2LDggQEAKIAogI2lmICFkZWZpbmVkIExVQV9W
RVJTSU9OX05VTSB8fCBMVUFfVkVSU0lPTl9OVU09PTUwMQogCitpbnQgbHVhb3Blbl91Y2kobHVh
X1N0YXRlICpMKTsKKwogLyoKICAqICoqIEFkYXB0ZWQgZnJvbSBMdWEgNS4yLjAKICAqICovCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
