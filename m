Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20FA4FC9B
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 18:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yYmcEFba1HHCrOJnMatLReBYNgUvqhWvkweGTnO78Hc=; b=dTAUdMQFUEtGwU
	8KHytWLbL3A+siU26l1vq6H6VZh7hWk+IKfXa8D45sqkKBdHks9YguXBZ32AbHvUtaVKWxhQoOZj2
	QN5eJFp5vTxKR9TpIKkle0fcdzn2BoO7V+eUU4E+a8WcHwnPvF9rISdBAkv65TSVatvYqi5dr6XQf
	ndY8DvbwhpUFGTH9nS4UczXJHnKOpj6SronxlpLmGjfZ41fkdrKn8efVnhki/1x2ZvaPRshVpkuMW
	qfsYWPUNP+II9uCYzL9q5oXZXSG4Izc7iKT9y4FSbmQdPWLP8OceYDunZ0airF4GWCj6NDYKWaeTc
	EvV3pYoLEvHtAmFl58qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf55V-0006Y2-FI; Sun, 23 Jun 2019 16:11:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf55A-0006XP-Sn
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 16:11:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EA7E3398A;
 Sun, 23 Jun 2019 18:11:04 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 7a75a959;
 Sun, 23 Jun 2019 18:11:02 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Jun 2019 18:11:00 +0200
Message-Id: <1561306260-9438-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_091109_085782_7AC50119 
X-CRM114-Status: UNSURE (   6.62  )
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
Subject: [OpenWrt-Devel] [PATCH] x86: fix missing led variable warning
 during boot
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

Rml4ZXMgZm9sbG93aW5nIHdhcm5pbmcgZHVyaW5nIHRoZSBib290OgoKIFdBUk5JTkc6IFZhcmlh
YmxlICdsZWQnIGRvZXMgbm90IGV4aXN0IG9yIGlzIG5vdCBhbiBhcnJheS9vYmplY3QKClNpZ25l
ZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4
L3g4Ni9iYXNlLWZpbGVzL2V0Yy9kaWFnLnNoIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC94ODYvYmFzZS1maWxlcy9ldGMv
ZGlhZy5zaCBiL3RhcmdldC9saW51eC94ODYvYmFzZS1maWxlcy9ldGMvZGlhZy5zaAppbmRleCAz
YWY0YjIzNTgzN2IuLmQwNDNlNGYwMzUzNSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3g4Ni9i
YXNlLWZpbGVzL2V0Yy9kaWFnLnNoCisrKyBiL3RhcmdldC9saW51eC94ODYvYmFzZS1maWxlcy9l
dGMvZGlhZy5zaApAQCAtMjAsNiArMjAsOCBAQCBwcmVpbml0X21hdGNoX2RpYWdfbGVkKCkgewog
CWpzb25faW5pdAogCWpzb25fbG9hZCAiJChjYXQgJENGRykiCiAJanNvbl9nZXRfa2V5cyBrZXlz
IGxlZAorCWpzb25faXNfYSBsZWQgb2JqZWN0IHx8IHJldHVybgorCiAJanNvbl9zZWxlY3QgbGVk
CiAJZm9yIGtleSBpbiAka2V5czsgZG8KIAkJanNvbl9zZWxlY3QgIiRrZXkiCi0tIAoxLjkuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
