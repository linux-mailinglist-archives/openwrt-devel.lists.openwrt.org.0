Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9B112256E
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 08:29:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bw6l+w0gOfMUOoPmcVTeF1sbZMXaT3jBBovzz7wVTY=; b=TwP6ekitaB09PJ
	z+cz2hE1V9fXYu+U8KU7Ojz01Nb468dk9t+D8Wz8ykajuO5gKLO7uqF5tz0lbZOOEz4FzKd6vfzY4
	f6btz24gU0CDw5joxj1MtyrAgvt0XWhUsFvDNEnIjUIF2UMMnNBjAknQW5cOgN/fil9aqNiniUmKH
	YY5Vm11VsJamgaydQwmOvaer2sA5Oet2vVRPz5eRY47LnXyYSoQW7A+RYgc7qyJvfd4shoD7sTW0T
	TYfZjPF3V7X8QGUqL3/SdYfWMSmYuPsf/MwB+NqQ0AO3ZEr/UHvcTfstcVyJ/aNRhVo0cRk1SCbdN
	ad6sep0sZ9c/7JceC1GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7IJ-0005AF-6G; Tue, 17 Dec 2019 07:29:23 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Hl-0004iu-Dp
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 07:28:50 +0000
Received: by mail-lf1-x143.google.com with SMTP id n25so6229766lfl.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 23:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yb3dV7UvjtZ6WJKk5LrmF19y4l6ZCSxYVWz0eoRl/qA=;
 b=sOX/kWHYzqxcL9Njc0ivDLM1Y9T4d99RwarRHeUC+hDzAOfsMkta4gywpGOQjgK/cO
 0pOing+jx9DGnlxX/XHnNf7EfKmluPVZYrLSYABa4on6De23sqK+O5szyEOyETIK1DFr
 K3SXK2jLzyP+ZZoNwQmM3ZLSXg+GVmHjSBW/HsMPUx8PRR/Hwtvg1ItMmWRoNOxbE6oe
 hzqFnRIX8uMe85j5j/DXvbQN//Q+saMJhcnwSmh7IgsBaU3lCDqffDSnwUMKcorYkhNZ
 d88Db8cgjaeHerPQ3Yl09+dTyVz1KBw/L2ERZmcVz5mf/wGjwyUetnn2phTalQtzWeHd
 K7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yb3dV7UvjtZ6WJKk5LrmF19y4l6ZCSxYVWz0eoRl/qA=;
 b=FFU3os7qDAeGmoCt5djc3BNBX8hXqYOLWqBRLRkTRQgxjfFM1xDyIVRMILAZRq8FxC
 nv4KigdVqDH9/sSSIBBa31aHiZ8V6mAifKk1nl00CO44h+c7XFCgjf0FrY3I4Uuhxa4Z
 U4hF87KAbbJuHfQqaHnDpQwkgz3DhAkbUPZza6YweFv2iTS9OklnXCXhpt5t6eNl8hgH
 G8mC8REyANMZlcZwk3wGQm0oY+SkWOr6XwE1fYa6/Fg1fMCBHtdPJzGDcxHxJQct/+VI
 2heuqZegpefSdng7YSkMaJOIxeDiOmLc5hRTKpDgbM/zzhYIdq1lmtMTjMybOrSM0I5R
 alxQ==
X-Gm-Message-State: APjAAAVpEuhaYo6R1d03lkNmViBWEl2I6f6LEtzW/R/tqai53vc3hg8W
 yNj3DMwlaF8rLQHx6dx6S1tLyHMR
X-Google-Smtp-Source: APXvYqztyFTI2qR6goF8jZwPsu/bjR1OxLlHA+fuMdASCxz0CgmtuhHEmOFTgnNT9mshd9L+EUeLhA==
X-Received: by 2002:ac2:5549:: with SMTP id l9mr1814940lfk.53.1576567727499;
 Mon, 16 Dec 2019 23:28:47 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y29sm11919221ljd.88.2019.12.16.23.28.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 23:28:47 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Dec 2019 08:28:35 +0100
Message-Id: <20191217072836.11411-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191217072836.11411-1-zajec5@gmail.com>
References: <20191217072836.11411-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_232849_514001_1473D60A 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools 2/3] libblkid: vfat: Fix reading
 labels which starts with byte 0x05
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
Cc: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali.rohar@gmail.com>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGkucm9oYXJAZ21haWwuY29tPgoKY29tbWl0IGU1MjZmNTAz
OTE4Y2MyOWQ4YjFjY2YzNmE1YzNhMzQ2NDVkMmJlNmUgdXBzdHJlYW0uCgpXaGVuIEZBVCBkaXJl
Y3RvcnkgZW50cnkgaGFzIGxlYWRpbmcgYnl0ZSAweDA1IGl0IGlzIGludGVycHJldGVkIGFzIGJ5
dGUKMHhFNS4gVGhpcyBpcyBob3cgRkFUIHN0b3JlcyBmaWxlIG5hbWUgd2hpY2ggc3RhcnRzIHdp
dGggYnl0ZSAweEU1IGFzCmxlYWRpbmcgYnl0ZSBpbiAweEU1IGluIEZBVCBkaXJlY3RvcnkgZW50
cnkgbWVhbnMgdGhhdCBmaWxlIHNsb3QgaXMgZW1wdHkuCgpGaXhlczogIzUzMwotLS0KIGxpYmJs
a2lkLXRpbnkvdmZhdC5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2xpYmJsa2lkLXRpbnkvdmZhdC5jIGIvbGliYmxraWQtdGlueS92ZmF0LmMK
aW5kZXggNDliODY1YS4uOTNlNDA1MyAxMDA2NDQKLS0tIGEvbGliYmxraWQtdGlueS92ZmF0LmMK
KysrIGIvbGliYmxraWQtdGlueS92ZmF0LmMKQEAgLTE2Nyw2ICsxNjcsOCBAQCBzdGF0aWMgdW5z
aWduZWQgY2hhciAqc2VhcmNoX2ZhdF9sYWJlbChibGtpZF9wcm9iZSBwciwKIAkJaWYgKChlbnQt
PmF0dHIgJiAoRkFUX0FUVFJfVk9MVU1FX0lEIHwgRkFUX0FUVFJfRElSKSkgPT0KIAkJICAgIEZB
VF9BVFRSX1ZPTFVNRV9JRCkgewogCQkJREJHKExPV1BST0JFLCB1bF9kZWJ1ZygiXHRmb3VuZCBm
cyBMQUJFTCBhdCBlbnRyeSAlZCIsIGkpKTsKKwkJCWlmIChlbnQtPm5hbWVbMF0gPT0gMHgwNSkK
KwkJCQllbnQtPm5hbWVbMF0gPSAweEU1OwogCQkJcmV0dXJuIGVudC0+bmFtZTsKIAkJfQogCX0K
LS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
