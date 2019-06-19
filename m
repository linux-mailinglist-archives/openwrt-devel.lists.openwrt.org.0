Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC694B234
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 08:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3eUluFz/1tABAY+3QADwRca+IQowpVMdp5sbYsp302g=; b=OS9nbFdgGrdRtu
	LLDnF/PLblOggdjAyY6utqkKq8yh6wTXPOvtpdxbQqCCyIQVdBab8GivHj+lburFm+witN7Cqyghd
	P1RizLvLa0H6ChKwXBqVI8PK6WEWaASdsEQO725WpW8fAVqL6NcpbOxAbV83rxny6v6i24UXHeyJW
	PRGkWxKeNGVT0RMsJJO2Nc8uFn93jA+oXhmqIaylKCtqglnGZbtqugQUSinG27Y9LmaEulZJFLXhN
	j6/FghLRKGwhI35EtOzZvBBfm+ReHZD0z4BvLmMZl6wfxmodg4orH43j1pq1TEY+GXga7ke8YC05P
	d0mSOVel5ADXKGkk/Lzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUEw-0002ds-86; Wed, 19 Jun 2019 06:38:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUEm-0002dC-Kv
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 06:38:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F36D63D01;
 Wed, 19 Jun 2019 08:38:23 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c3d28e69;
 Wed, 19 Jun 2019 08:38:21 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Jun 2019 08:36:56 +0200
Message-Id: <1560926216-19299-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_233828_842009_4BB8239A 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] build: fix kernel_*config targets on 4.19
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Jonas Gorski <jonas.gorski@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVjZW50IGtlcm5lbCB2ZXJzaW9ucyBuZWVkIHRvb2xjaGFpbiBpbiBvcmRlciB0byBwcm9wZXJs
eSBjb25maWd1cmUKa2VybmVsLCBmb3IgZXhhbXBsZSB0byBzZXQgQ0NfSEFTX0FTTV9HT1RPIGNv
bmZpZyBzeW1ib2wsIHNvIG1pc3NpbmcKdG9vbGNoYWluIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcg
ZXJyb3Igd2hpbGUgcnVubmluZyBgbWFrZQprZXJuZWxfb2xkY29uZmlnYCBvbiBhdGg3OSB0YXJn
ZXQgd2l0aCA0LjE5IGtlcm5lbCBpbiB0aGUgY2xlYW4gdHJlZToKCiBpbml0L0tjb25maWc6MTc6
IHN5bnRheCBlcnJvcgogaW5pdC9LY29uZmlnOjE2OiBpbnZhbGlkIG9wdGlvbgogLi9zY3JpcHRz
L2NsYW5nLXZlcnNpb24uc2g6IGxpbmUgMTU6IG1pcHMtb3BlbndydC1saW51eC1tdXNsLWdjYzog
Y29tbWFuZCBub3QgZm91bmQKIC4vc2NyaXB0cy9nY2MtcGx1Z2luLnNoOiBsaW5lIDExOiBtaXBz
LW9wZW53cnQtbGludXgtbXVzbC1nY2M6IGNvbW1hbmQgbm90IGZvdW5kCiBuZXQvc2NoZWQvS2Nv
bmZpZzo0NDogd2FybmluZzogbWVudWNvbmZpZyBzdGF0ZW1lbnQgd2l0aG91dCBwcm9tcHQKIG1h
a2VbNF06ICoqKiBbc2NyaXB0cy9rY29uZmlnL01ha2VmaWxlOjY5OiBvbGRjb25maWddIEVycm9y
IDEKClNvIGluIG9yZGVyIHRvIHN1cHBvcnQgdGhpcyBuZXcga2VybmVsIHZlcnNpb25zLCB0aGlz
IHBhdGNoIGFkZHMKdG9vbGNoYWluIGFzIGEgaGFyZCBkZXBlbmRlbmN5IHRvIHRoZSBrZXJuZWxf
KmNvbmZpZyB0YXJnZXRzLgoKU2lnbmVkLW9mZi1ieTogSm9uYXMgR29yc2tpIDxqb25hcy5nb3Jz
a2lAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PgotLS0KCkJUVyB3ZSd2ZSB0cmllZCB0byBlbmFibGUgdGhpcyBkZXBlbmRlbmN5IG9ubHkgZm9y
IGtlcm5lbCB2ZXJzaW9ucyA+IDQuMTQsIGJ1dAppdCdzIGEgY2hhbGxlbmdlIGFzIGVpdGhlciBD
T05GSUdfTElOVVhfNF8qIG9yIGtlcm5lbF9wYXRjaHZlcl8qIGRvZXNuJ3Qgd29yawppbiB0b3Bs
ZXZlbC5tayBvciB0b29sY2hhaW4vaW5zdGFsbCBpcyBub3QgYXZhaWxhYmxlIGluIHRhcmdldC9s
aW51eC9NYWtlZmlsZSwKc28gaXQgd291bGQgcHJvYmFibHkgbmVlZCBzb21lIHJlZmFjdG9yaW5n
IHdoaWNoIGlzIHByb2JhYmx5IG5vdCB3b3J0aCB0aGUKZWZmb3J0IGFzIDQuMTQgZGF5cyBhcmUg
bnVtYmVyZWQgYW55d2F5LgoKIGluY2x1ZGUvdG9wbGV2ZWwubWsgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRl
L3RvcGxldmVsLm1rIGIvaW5jbHVkZS90b3BsZXZlbC5tawppbmRleCAzNmY3OTBmODA3MmEuLjEz
M2RhOWQ4MzBiNSAxMDA2NDQKLS0tIGEvaW5jbHVkZS90b3BsZXZlbC5taworKysgYi9pbmNsdWRl
L3RvcGxldmVsLm1rCkBAIC0xNDUsNyArMTQ1LDcgQEAgeGNvbmZpZzogc2NyaXB0cy9jb25maWcv
cWNvbmYgcHJlcGFyZS10bXBpbmZvIEZPUkNFCiAJZmkKIAkkPCBDb25maWcuaW4KIAotcHJlcGFy
ZV9rZXJuZWxfY29uZjogLmNvbmZpZyBGT1JDRQorcHJlcGFyZV9rZXJuZWxfY29uZjogLmNvbmZp
ZyB0b29sY2hhaW4vaW5zdGFsbCBGT1JDRQogCiBpZmVxICgkKHdpbGRjYXJkIHN0YWdpbmdfZGly
L2hvc3QvYmluL3F1aWx0KSwpCiAgIHByZXBhcmVfa2VybmVsX2NvbmY6Ci0tIAoxLjkuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
