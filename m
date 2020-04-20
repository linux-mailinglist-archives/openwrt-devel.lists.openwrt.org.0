Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669011B0CD5
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRzPjCJTuSX1NOW8yoFtP84NE9hcTXsuoi5cdDv1O4A=; b=BoOUjsuG+wuBBq
	m+uFD0OVvzPYrI/gIowsEJl3i/NpQkXCsBWwBFNExMX0/Xa+iTBs0vBkJS+H/Xr1gLJjT/7rwlS/p
	JzZhxwaDqGEx5eT9mHyB2b0gnBO5OyF5gaStHAEZL9wagaKxHerCDE3/SGO9pddNjU4Ve75agHG/N
	DmRYx9rKwtT0FDxV5PYxiMue+iM1oAxLs1zD+UYC4R7yvGWi+eGMoiheWGK1irVhkL0VHiXZ6uyXa
	SFr7D4oV/hgPMHobwtqCBv4uP48Oa6dKMxxpt03D/VPqEM5F+jn4cm8nImZyznH150MA73sXry2LG
	DmSxuHe16GbNb9gys2OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWc5-0002h8-RU; Mon, 20 Apr 2020 13:37:29 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWaO-0000iJ-Jq
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:35:46 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id D289760335;
 Mon, 20 Apr 2020 15:35:39 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org D289760335
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org D289760335
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389741; bh=zGKrYEbhgQZpOkFd1Nmw/7h0lmW0Hk8XUAEpR6i/qMc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VGMIDSs/ZyyVPCuJ9l5BFg6raIzi7xdegHFdO6pruM3LvEhMBu0K5/ZoskSy1p9N4
 75Mnqr0Kb5hMvNfS97KoTCJz5gRO1XND8KSjKTBTMpyktvTsVwi4uyZlxZJy/s278M
 PCG0LipMQOdNtKIXas80m6l9miAArlKUCpikNVOg=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:39 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:34:57 +0200
Message-Id: <20200420133503.18700-9-hacks@slashdirt.org>
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
X-CRM114-CacheID: sfid-20200420_063544_996882_C1522E56 
X-CRM114-Status: GOOD (  12.93  )
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
Subject: [OpenWrt-Devel] [PATCH v2 08/14] ath79/mikrotik: use standard
 caldata functions
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

V2l0aCB0aGUgaW1wbGVtZW50YXRpb24gb2YgYSBzeXNmcyBpbnRlcmZhY2UgdG8gYWNjZXNzIFdM
QU4gZGF0YSwgdGhpcwp0YXJnZXQgbm8gbG9uZ2VyIG5lZWRzIGEgc3BlY2lhbCB3cmFwcGVyIHRv
IGV4dHJhY3QgY2FsZGF0YS4KClNpZ25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NA
c2xhc2hkaXJ0Lm9yZz4KLS0tCiB0YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvY29tbW9uLW1pa3Jv
dGlrLm1rICAgICAgICB8ICAyICstCiAuLi4vZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMC1hdGg5
ay1lZXByb20gICAgICAgICB8ICA4ICsrKystLS0KIC4uLi9ldGMvaG90cGx1Zy5kL2Zpcm13YXJl
LzExLWF0aDEway1jYWxkYXRhICAgICAgIHwgIDcgKysrLS0tCiAuLi4vYmFzZS1maWxlcy9saWIv
ZnVuY3Rpb25zL21pa3JvdGlrLWNhbGRhdGEuc2ggICB8IDI2IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KIDQgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCiBk
ZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMv
bGliL2Z1bmN0aW9ucy9taWtyb3Rpay1jYWxkYXRhLnNoCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L2F0aDc5L2ltYWdlL2NvbW1vbi1taWtyb3Rpay5tayBiL3RhcmdldC9saW51eC9hdGg3OS9p
bWFnZS9jb21tb24tbWlrcm90aWsubWsKaW5kZXggMjkyMjM3Yzc2YS4uNGNmMGFhMWNhYyAxMDA2
NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2NvbW1vbi1taWtyb3Rpay5taworKysg
Yi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvY29tbW9uLW1pa3JvdGlrLm1rCkBAIC0xLDYgKzEs
NiBAQAogZGVmaW5lIERldmljZS9taWtyb3RpawogCURFVklDRV9WRU5ET1IgOj0gTWlrcm9UaWsK
LQlERVZJQ0VfUEFDS0FHRVMgOj0gcmJleHRyYWN0IHJiY2ZnCisJREVWSUNFX1BBQ0tBR0VTIDo9
IHJiY2ZnCiAJTE9BREVSX1RZUEUgOj0gZWxmCiAJS0VSTkVMIDo9IGtlcm5lbC1iaW4gfCBhcHBl
bmQtZHRiIHwgbHptYSB8IGxvYWRlci1rZXJuZWwKIAlLRVJORUxfSU5JVFJBTUZTIDo9IGtlcm5l
bC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IGxvYWRlci1rZXJuZWwKZGlmZiAtLWdpdCBhL3Rh
cmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdh
cmUvMTAtYXRoOWstZWVwcm9tIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmls
ZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMC1hdGg5ay1lZXByb20KaW5kZXggODY5OTVkZTg5
MC4uYmUyZjZhZWM2OSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jh
c2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2FyZS8xMC1hdGg5ay1lZXByb20KKysrIGIvdGFy
Z2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9maXJtd2Fy
ZS8xMC1hdGg5ay1lZXByb20KQEAgLTMsNyArMyw5IEBACiBbIC1lIC9saWIvZmlybXdhcmUvJEZJ
Uk1XQVJFIF0gJiYgZXhpdCAwCiAKIC4gL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaAotLiAvbGli
L2Z1bmN0aW9ucy9taWtyb3Rpay1jYWxkYXRhLnNoCisKK3dsYW5fZGF0YT0iL3N5cy9maXJtd2Fy
ZS9taWtyb3Rpay9oYXJkX2NvbmZpZy93bGFuX2RhdGEiCittYWNfYmFzZT0iL3N5cy9maXJtd2Fy
ZS9taWtyb3Rpay9oYXJkX2NvbmZpZy9tYWNfYmFzZSIKIAogYm9hcmQ9JChib2FyZF9uYW1lKQog
CkBAIC0xMSw4ICsxMyw4IEBAIGNhc2UgIiRGSVJNV0FSRSIgaW4KICJhdGg5ay1lZXByb20tYWhi
LTE4MTAwMDAwLndtYWMuYmluIikKIAljYXNlICRib2FyZCBpbgogCW1pa3JvdGlrLHJvdXRlcmJv
YXJkLXdhcC1nLTVoYWN0MmhuZCkKLQkJbWlrcm90aWtfY2FsZGF0YV9leHRyYWN0ICJoYXJkX2Nv
bmZpZyIgMHgxMDAwIDB4NDQwCi0JCWF0aDlrX3BhdGNoX21hYyAkKG1hY2FkZHJfYWRkICQobXRk
X2dldF9tYWNfYmluYXJ5IGhhcmRfY29uZmlnIDB4MTApICsyKQorCQljYWxkYXRhX2Zyb21fZmls
ZSAkd2xhbl9kYXRhIDB4MTAwMCAweDQ0MAorCQlhdGg5a19wYXRjaF9tYWMgJChtYWNhZGRyX2Fk
ZCAkKGNhdCAkbWFjX2Jhc2UpICsyKQogCQk7OwogCSopCiAJCWNhbGRhdGFfZGllICJib2FyZCAk
Ym9hcmQgaXMgbm90IHN1cHBvcnRlZCB5ZXQiCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRo
NzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1j
YWxkYXRhIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hvdHBs
dWcuZC9maXJtd2FyZS8xMS1hdGgxMGstY2FsZGF0YQppbmRleCAyNTIxZjBhZDk2Li5iNDg2YTU3
MjBkIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9l
dGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhCisrKyBiL3RhcmdldC9saW51
eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRo
MTBrLWNhbGRhdGEKQEAgLTMsNyArMyw4IEBACiBbIC1lIC9saWIvZmlybXdhcmUvJEZJUk1XQVJF
IF0gJiYgZXhpdCAwCiAKIC4gL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaAotLiAvbGliL2Z1bmN0
aW9ucy9taWtyb3Rpay1jYWxkYXRhLnNoCisKK3dsYW5fZGF0YT0iL3N5cy9maXJtd2FyZS9taWty
b3Rpay9oYXJkX2NvbmZpZy93bGFuX2RhdGEiCiAKIGJvYXJkPSQoYm9hcmRfbmFtZSkKIApAQCAt
MTEsMTQgKzEyLDE0IEBAIGNhc2UgIiRGSVJNV0FSRSIgaW4KICJhdGgxMGsvY2FsLXBjaS0wMDAw
OjAwOjAwLjAuYmluIikKIAljYXNlICRib2FyZCBpbgogCW1pa3JvdGlrLHJvdXRlcmJvYXJkLXdh
cC1nLTVoYWN0MmhuZCkKLQkJbWlrcm90aWtfY2FsZGF0YV9leHRyYWN0ICJoYXJkX2NvbmZpZyIg
MHg1MDAwIDB4ODQ0CisJCWNhbGRhdGFfZnJvbV9maWxlICR3bGFuX2RhdGEgMHg1MDAwIDB4ODQ0
CiAJCTs7CiAJZXNhYwogCTs7CiAiYXRoMTBrL2NhbC1wY2ktMDAwMDowMTowMC4wLmJpbiIpCiAJ
Y2FzZSAkYm9hcmQgaW4KIAltaWtyb3Rpayxyb3V0ZXJib2FyZC05MjJ1YWdzLTVocGFjZCkKLQkJ
bWlrcm90aWtfY2FsZGF0YV9leHRyYWN0ICJoYXJkX2NvbmZpZyIgMHg1MDAwIDB4ODQ0CisJCWNh
bGRhdGFfZnJvbV9maWxlICR3bGFuX2RhdGEgMHg1MDAwIDB4ODQ0CiAJCTs7CiAJZXNhYwogCTs7
CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9saWIv
ZnVuY3Rpb25zL21pa3JvdGlrLWNhbGRhdGEuc2ggYi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90
aWsvYmFzZS1maWxlcy9saWIvZnVuY3Rpb25zL21pa3JvdGlrLWNhbGRhdGEuc2gKZGVsZXRlZCBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDcxYTFiZjAyZjMuLjAwMDAwMDAwMDAKLS0tIGEvdGFyZ2V0
L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvbGliL2Z1bmN0aW9ucy9taWtyb3Rpay1j
YWxkYXRhLnNoCisrKyAvZGV2L251bGwKQEAgLTEsMjYgKzAsMCBAQAotIyBDb3B5cmlnaHQgKEMp
IDIwMTkgUm9iZXJ0IE1hcmtvIDxyb2JpbWFya29AZ21haWwuY29tPgotIyBDb3B5cmlnaHQgKEMp
IDIwMTkgUm9nZXIgUHVleW8gQ2VudGVsbGVzIDxyb2dlci5wdWV5b0BndWlmaS5uZXQ+Ci0jCi0j
IEhlbHBlciBmdW5jdGlvbiB0byBleHRyYWN0IE1BQyBhZGRyZXNzZXMgYW5kIGNhbGlicmF0aW9u
IGRhdGEgZm9yIE1pa3JvVGlrCi0jCi0KLW1pa3JvdGlrX2NhbGRhdGFfZXh0cmFjdCgpIHsKLQls
b2NhbCBwYXJ0PSQxCi0JbG9jYWwgb2Zmc2V0PSQoKCQyKSkKLQlsb2NhbCBjb3VudD0kKCgkMykp
Ci0JbG9jYWwgbXRkCi0JbG9jYWwgZXJkZmlsZT0iL3RtcC9lcmQuYmluIgotCWxvY2FsIGZ3Zmls
ZT0iL2xpYi9maXJtd2FyZS8ke0ZJUk1XQVJFfSIKLQotCVsgLWUgJGZ3ZmlsZSBdICYmIGV4aXQg
MAotCi0JbXRkPSQoZmluZF9tdGRfY2hhcmRldiAkcGFydCkKLQlbIC1uICIkbXRkIiBdIHx8IGNh
bGRhdGFfZGllICJubyBtdGQgZGV2aWNlIGZvdW5kIGZvciBwYXJ0aXRpb24gJHBhcnQiCi0KLQly
YmV4dHJhY3QgLWUgJG10ZCAkZXJkZmlsZQotCi0JZGQgaWY9JGVyZGZpbGUgb2Y9JGZ3ZmlsZSBp
ZmxhZz1za2lwX2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVs
bCB8fCBcCi0JCWNhbGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxpYnJhdGlvbiBkYXRh
IGZyb20gJG10ZCIKLQotCXJtIC1mICRlcmRmaWxlCi19Ci0tIAoyLjExLjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
