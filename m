Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEC01B0CE0
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIEnh2Ki02WC2qQz+P7Tze7zeWiGKKOjN7hI5o+K9d0=; b=raIm6cG+Y37IJ6
	ZAfXp4j+fm62ch3vsKEYmR72JTeuenwUICXPNjbDsyz4dg/JhLkGL8lBcev5BTaqe35wvTZd62ot/
	avSaXodJ1xWYFx20TLr/LMcn3Fe45YQJOXyzf52fuD5J9AUhDUVLG1pYYb3j0b0yvIIlH7PUjedeg
	qMhfT7sdNgmTo/VA4ALaq7Qo7fRsM8MZq4PCopwcq7/WSBkrMUfaaUPYwnW/UYZZEhzAnDA8hMs5S
	zFutsMYH0jrN+mIwUJle7TDG1DRobAM6swBSqJ2d/lW/BZimpfacnhe0qiAD/DQgsBvCmHgQ4TckN
	lxXMY11pnWfJ7NDBGTfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWdF-00044a-1X; Mon, 20 Apr 2020 13:38:41 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWai-00016t-Ph
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:36:06 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 34A3060335;
 Mon, 20 Apr 2020 15:36:00 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 34A3060335
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 34A3060335
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389761; bh=bDEhkQReRk4eJtEoX7139bP+Q77F1k6Q8JkOZCAYdyI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yeByBgzsMtCbQ4J45r3XJcUz5fEP938GCH4FwqwXcO5ZNV2A9N5hyK9z80LsRG2kW
 mPtOI/gUlnxwq0lWOI0WZK+mADCg47gk5pJ7OFpu4Tq8UvkyadHUF6aHJVgnt3uLlL
 hhpxDk8L7X6knyNR2bCQL6yvPpzXfIKrAdtmUrdY=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:59 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:35:02 +0200
Message-Id: <20200420133503.18700-14-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420133503.18700-1-hacks@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063605_009846_022A4FD1 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 13/14] ath79/mikrotik: load caldata via
 sysfs loader
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBjb21taXQgdGFrZXMgYWR2YW50YWdlcyBvZiBiYXNlLWZpbGVzIDIyMCB3aGljaCBpbnRy
b2R1Y2VzIHJvdXRpbmVzCnRvIHBlcmZvcm0gY2FsZGF0YSBsb2FkaW5nIGRpcmVjdGx5IHZpYSB0
aGUga2VybmVsIHN5c2ZzIGxvYWRlciBoZWxwZXIuClRoaXMgaGFzIHRoZSBiZW5lZml0cyBvZiBu
b3Qgd2FzdGluZyBmbGFzaCBzcGFjZSB0byBzdG9yZSBjYWxkYXRhLgoKTWVtb3J5IGZvb3Rwcmlu
dCBpcyByZWR1Y2VkIHRvIHRoZSBiYXJlIG1pbmltdW06IGZvciBkZXZpY2VzIHRoYXQgZG9uJ3QK
bmVlZCBNQUMgcGF0Y2hpbmcsIHRoZSBjYWxkYXRhIGlzIGxvYWRlZCBkaXJlY3RseSwgZm9yIGRl
dmljZXMgdGhhdCBkbwpuZWVkIE1BQyBwYXRjaGluZywgdGhlIGNhbGRhdGEgaXMgZXh0cmFjdGVk
IHRvIC90bXAsIHBhdGNoZWQgYW5kIHRoZW4KbG9hZGVkLgoKU2lnbmVkLW9mZi1ieTogVGhpYmF1
dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0KIC4uLi9taWtyb3Rpay9iYXNlLWZp
bGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTAtYXRoOWstZWVwcm9tICAgICAgfCA2ICsrKyst
LQogLi4uL21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMS1hdGgx
MGstY2FsZGF0YSAgICB8IDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlr
L2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMC1hdGg5ay1lZXByb20gYi90YXJn
ZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJl
LzEwLWF0aDlrLWVlcHJvbQppbmRleCBiZTJmNmFlYzY5Li5jNjM4NTYzMjdjIDEwMDY0NAotLS0g
YS90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zp
cm13YXJlLzEwLWF0aDlrLWVlcHJvbQorKysgYi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsv
YmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzEwLWF0aDlrLWVlcHJvbQpAQCAtMTMs
OCArMTMsMTAgQEAgY2FzZSAiJEZJUk1XQVJFIiBpbgogImF0aDlrLWVlcHJvbS1haGItMTgxMDAw
MDAud21hYy5iaW4iKQogCWNhc2UgJGJvYXJkIGluCiAJbWlrcm90aWsscm91dGVyYm9hcmQtd2Fw
LWctNWhhY3QyaG5kKQotCQljYWxkYXRhX2Zyb21fZmlsZSAkd2xhbl9kYXRhIDB4MTAwMCAweDQ0
MAotCQlhdGg5a19wYXRjaF9tYWMgJChtYWNhZGRyX2FkZCAkKGNhdCAkbWFjX2Jhc2UpICsyKQor
CQljYWxkYXRhX2Zyb21fZmlsZSAkd2xhbl9kYXRhIDB4MTAwMCAweDQ0MCAvdG1wLyRGSVJNV0FS
RQorCQlhdGg5a19wYXRjaF9tYWMgJChtYWNhZGRyX2FkZCAkKGNhdCAkbWFjX2Jhc2UpICsyKSAv
dG1wLyRGSVJNV0FSRQorCQljYWxkYXRhX3N5c2ZzbG9hZF9mcm9tX2ZpbGUgL3RtcC8kRklSTVdB
UkUgMHgwIDB4NDQwCisJCXJtIC1mIC90bXAvJEZJUk1XQVJFCiAJCTs7CiAJKikKIAkJY2FsZGF0
YV9kaWUgImJvYXJkICRib2FyZCBpcyBub3Qgc3VwcG9ydGVkIHlldCIKZGlmZiAtLWdpdCBhL3Rh
cmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdh
cmUvMTEtYXRoMTBrLWNhbGRhdGEgYi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1m
aWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhCmluZGV4IGI0ODZh
NTcyMGQuLjUzMWMyMTY3OGYgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rp
ay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRoMTBrLWNhbGRhdGEKKysr
IGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9m
aXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0YQpAQCAtMTIsMTQgKzEyLDE0IEBAIGNhc2UgIiRGSVJN
V0FSRSIgaW4KICJhdGgxMGsvY2FsLXBjaS0wMDAwOjAwOjAwLjAuYmluIikKIAljYXNlICRib2Fy
ZCBpbgogCW1pa3JvdGlrLHJvdXRlcmJvYXJkLXdhcC1nLTVoYWN0MmhuZCkKLQkJY2FsZGF0YV9m
cm9tX2ZpbGUgJHdsYW5fZGF0YSAweDUwMDAgMHg4NDQKKwkJY2FsZGF0YV9zeXNmc2xvYWRfZnJv
bV9maWxlICR3bGFuX2RhdGEgMHg1MDAwIDB4ODQ0CiAJCTs7CiAJZXNhYwogCTs7CiAiYXRoMTBr
L2NhbC1wY2ktMDAwMDowMTowMC4wLmJpbiIpCiAJY2FzZSAkYm9hcmQgaW4KIAltaWtyb3Rpayxy
b3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZCkKLQkJY2FsZGF0YV9mcm9tX2ZpbGUgJHdsYW5fZGF0
YSAweDUwMDAgMHg4NDQKKwkJY2FsZGF0YV9zeXNmc2xvYWRfZnJvbV9maWxlICR3bGFuX2RhdGEg
MHg1MDAwIDB4ODQ0CiAJCTs7CiAJZXNhYwogCTs7Ci0tIAoyLjExLjAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
