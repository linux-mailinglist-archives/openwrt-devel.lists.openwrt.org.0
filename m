Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E8C32E7A
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Jun 2019 13:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/chDCJYAXH1soB9kSzq8/i8/rUGl38Jc0arxxZG5iRs=; b=bse7NcCc6QsMhy
	xkcOz/V6MHYz+UNP5e6w8Q00+J/E6NkeyOUFo19VwZHKE3HaPa0WWIxAUc2abvluZ4In5HHBgXSZI
	0DG5qUq9yWxrSbT1f1nqUndcelgQIuQIUnMLFDsFEuZHR5cbP/wmEvOgEOAxSgALkar6icrfKbtI5
	wX6pWFHhaCTd8Pl4I29yxJGwY8lBs3zvB60CP4GxreXIWAd1rmH302DOyGktXN6cdiwGo/y0v6OF8
	3gHRozhtd4/Rw3y1RumBJWKacGciJzfHJ6mCxr3ME8qXhe+yFadsU5VcKnIxiTt7vsbOCcOUk4F2D
	2ynH2B0CrNOjnH+KaNtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkzf-0004cn-72; Mon, 03 Jun 2019 11:19:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkzY-0004cT-MR
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 11:19:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4F08034D9;
 Mon,  3 Jun 2019 13:19:01 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e045886d;
 Mon, 3 Jun 2019 13:18:58 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  3 Jun 2019 13:18:51 +0200
Message-Id: <1559560731-5805-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041905_028309_9A0E0B1F 
X-CRM114-Status: UNSURE (   7.65  )
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
Subject: [OpenWrt-Devel] [PATCH] kernel: generic: make kernel-debug.tar.bz2
 usable again
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

VGhpcyBwYXRjaCByZW1vdmVzIDIwMi1yZWR1Y2VfbW9kdWxlX3NpemUucGF0Y2ggd2hpY2ggaXMg
Y2F1c2luZyBtaXNzaW5nCmRlYnVnIHN5bWJvbHMgaW4ga2VybmVsIG1vZHVsZXMsIGxlYWRpbmcg
dG8gdW51c2FibGUKa2VybmVsLWRlYnVnLnRhci5iejIgb24gYWxsIHBsYXRmb3JtcywgbWFraW5n
IGRlYnVnZ2luZyBvZiByZWxlYXNlCmtlcm5lbCBjcmFzaGVzIGRpZmZpY3VsdC4KCkNjOiBGZWxp
eCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+Ci0tLQogLi4uL2dlbmVyaWMvaGFjay00LjE0LzIwMi1yZWR1Y2VfbW9kdWxl
X3NpemUucGF0Y2ggfCAyNCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAuLi4vZ2VuZXJpYy9oYWNr
LTQuMTkvMjAyLXJlZHVjZV9tb2R1bGVfc2l6ZS5wYXRjaCB8IDI0IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIC4uLi9nZW5lcmljL2hhY2stNC45LzIwMi1yZWR1Y2VfbW9kdWxlX3NpemUucGF0Y2gg
IHwgMjQgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA3MiBkZWxldGlv
bnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvZ2VuZXJpYy9oYWNrLTQuMTQv
MjAyLXJlZHVjZV9tb2R1bGVfc2l6ZS5wYXRjaAogZGVsZXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9s
aW51eC9nZW5lcmljL2hhY2stNC4xOS8yMDItcmVkdWNlX21vZHVsZV9zaXplLnBhdGNoCiBkZWxl
dGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFjay00LjkvMjAyLXJlZHVjZV9t
b2R1bGVfc2l6ZS5wYXRjaAoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmljL2hhY2st
NC4xNC8yMDItcmVkdWNlX21vZHVsZV9zaXplLnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMv
aGFjay00LjE0LzIwMi1yZWR1Y2VfbW9kdWxlX3NpemUucGF0Y2gKZGVsZXRlZCBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDJjYmI2YWRkOWEyZS4uMDAwMDAwMDAwMDAwCi0tLSBhL3RhcmdldC9saW51
eC9nZW5lcmljL2hhY2stNC4xNC8yMDItcmVkdWNlX21vZHVsZV9zaXplLnBhdGNoCisrKyAvZGV2
L251bGwKQEAgLTEsMjQgKzAsMCBAQAotRnJvbSBmZDY2ODg0ZGEyZjk2ZDJhN2VhNzNmNThiMWI4
NjI1MWI5NTlhOTEzIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQotRnJvbTogRmVsaXggRmlldGth
dSA8bmJkQG5iZC5uYW1lPgotRGF0ZTogRnJpLCA3IEp1bCAyMDE3IDE2OjU2OjE5ICswMjAwCi1T
dWJqZWN0OiBrZXJuZWw6IHN0cmlwIHVubmVjZXNzYXJ5IHN5bWJvbCB0YWJsZSBpbmZvcm1hdGlv
biBmcm9tIGtlcm5lbCBtb2R1bGVzCi0KLXJlZHVjZXMgZGVmYXVsdCBzcXVhc2hmcyBzaXplIG9u
IGFyNzF4eCBieSBhYm91dCA0awotCi1sZWRlLWNvbW1pdDogMDU4ZDMzMWEzOTA3N2YxNTljYTg5
MjJmMWY0MjJhMTM0NmQ2YWE2NwotU2lnbmVkLW9mZi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5i
ZC5uYW1lPgotLS0tCi0gTWFrZWZpbGUgfCAyICstCi0gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCi0KLS0tLSBhL01ha2VmaWxlCi0rKysgYi9NYWtlZmlsZQot
QEAgLTQyNSw3ICs0MjUsNyBAQCBLQlVJTERfQUZMQUdTX0tFUk5FTCA6PQotIEtCVUlMRF9DRkxB
R1NfS0VSTkVMIDo9Ci0gS0JVSUxEX0FGTEFHU19NT0RVTEUgIDo9IC1ETU9EVUxFCi0gS0JVSUxE
X0NGTEFHU19NT0RVTEUgIDo9IC1ETU9EVUxFCi0tS0JVSUxEX0xERkxBR1NfTU9EVUxFIDo9IC1U
ICQoc3JjdHJlZSkvc2NyaXB0cy9tb2R1bGUtY29tbW9uLmxkcwotK0tCVUlMRF9MREZMQUdTX01P
RFVMRSA9IC1UICQoc3JjdHJlZSkvc2NyaXB0cy9tb2R1bGUtY29tbW9uLmxkcyAkKGlmICQoQ09O
RklHX1BST0ZJTElORyksLC1zKQotIEdDQ19QTFVHSU5TX0NGTEFHUyA6PQotIAotIGV4cG9ydCBB
UkNIIFNSQ0FSQ0ggU1VCQVJDSCBDT05GSUdfU0hFTEwgSE9TVENDIEhPU1RDRkxBR1MgQ1JPU1Nf
Q09NUElMRSBBUyBMRApkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFjay00LjE5
LzIwMi1yZWR1Y2VfbW9kdWxlX3NpemUucGF0Y2ggYi90YXJnZXQvbGludXgvZ2VuZXJpYy9oYWNr
LTQuMTkvMjAyLXJlZHVjZV9tb2R1bGVfc2l6ZS5wYXRjaApkZWxldGVkIGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggNjQ0YTE4Yzk5YzQ3Li4wMDAwMDAwMDAwMDAKLS0tIGEvdGFyZ2V0L2xpbnV4L2dl
bmVyaWMvaGFjay00LjE5LzIwMi1yZWR1Y2VfbW9kdWxlX3NpemUucGF0Y2gKKysrIC9kZXYvbnVs
bApAQCAtMSwyNCArMCwwIEBACi1Gcm9tIGZkNjY4ODRkYTJmOTZkMmE3ZWE3M2Y1OGIxYjg2MjUx
Yjk1OWE5MTMgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCi1Gcm9tOiBGZWxpeCBGaWV0a2F1IDxu
YmRAbmJkLm5hbWU+Ci1EYXRlOiBGcmksIDcgSnVsIDIwMTcgMTY6NTY6MTkgKzAyMDAKLVN1Ympl
Y3Q6IGtlcm5lbDogc3RyaXAgdW5uZWNlc3Nhcnkgc3ltYm9sIHRhYmxlIGluZm9ybWF0aW9uIGZy
b20ga2VybmVsIG1vZHVsZXMKLQotcmVkdWNlcyBkZWZhdWx0IHNxdWFzaGZzIHNpemUgb24gYXI3
MXh4IGJ5IGFib3V0IDRrCi0KLWxlZGUtY29tbWl0OiAwNThkMzMxYTM5MDc3ZjE1OWNhODkyMmYx
ZjQyMmExMzQ2ZDZhYTY3Ci1TaWduZWQtb2ZmLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5h
bWU+Ci0tLS0KLSBNYWtlZmlsZSB8IDIgKy0KLSAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKLQotLS0tIGEvTWFrZWZpbGUKLSsrKyBiL01ha2VmaWxlCi1AQCAt
NDI3LDcgKzQyNyw3IEBAIEtCVUlMRF9BRkxBR1NfS0VSTkVMIDo9Ci0gS0JVSUxEX0NGTEFHU19L
RVJORUwgOj0KLSBLQlVJTERfQUZMQUdTX01PRFVMRSAgOj0gLURNT0RVTEUKLSBLQlVJTERfQ0ZM
QUdTX01PRFVMRSAgOj0gLURNT0RVTEUKLS1LQlVJTERfTERGTEFHU19NT0RVTEUgOj0gLVQgJChz
cmN0cmVlKS9zY3JpcHRzL21vZHVsZS1jb21tb24ubGRzCi0rS0JVSUxEX0xERkxBR1NfTU9EVUxF
ID0gLVQgJChzcmN0cmVlKS9zY3JpcHRzL21vZHVsZS1jb21tb24ubGRzICQoaWYgJChDT05GSUdf
UFJPRklMSU5HKSwsLXMpCi0gS0JVSUxEX0xERkxBR1MgOj0KLSBHQ0NfUExVR0lOU19DRkxBR1Mg
Oj0KLSAKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmljL2hhY2stNC45LzIwMi1yZWR1
Y2VfbW9kdWxlX3NpemUucGF0Y2ggYi90YXJnZXQvbGludXgvZ2VuZXJpYy9oYWNrLTQuOS8yMDIt
cmVkdWNlX21vZHVsZV9zaXplLnBhdGNoCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBh
OWY5N2E2OWQ4MDEuLjAwMDAwMDAwMDAwMAotLS0gYS90YXJnZXQvbGludXgvZ2VuZXJpYy9oYWNr
LTQuOS8yMDItcmVkdWNlX21vZHVsZV9zaXplLnBhdGNoCisrKyAvZGV2L251bGwKQEAgLTEsMjQg
KzAsMCBAQAotRnJvbSBmZDY2ODg0ZGEyZjk2ZDJhN2VhNzNmNThiMWI4NjI1MWI5NTlhOTEzIE1v
biBTZXAgMTcgMDA6MDA6MDAgMjAwMQotRnJvbTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1l
PgotRGF0ZTogRnJpLCA3IEp1bCAyMDE3IDE2OjU2OjE5ICswMjAwCi1TdWJqZWN0OiBrZXJuZWw6
IHN0cmlwIHVubmVjZXNzYXJ5IHN5bWJvbCB0YWJsZSBpbmZvcm1hdGlvbiBmcm9tIGtlcm5lbCBt
b2R1bGVzCi0KLXJlZHVjZXMgZGVmYXVsdCBzcXVhc2hmcyBzaXplIG9uIGFyNzF4eCBieSBhYm91
dCA0awotCi1sZWRlLWNvbW1pdDogMDU4ZDMzMWEzOTA3N2YxNTljYTg5MjJmMWY0MjJhMTM0NmQ2
YWE2NwotU2lnbmVkLW9mZi1ieTogRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1lPgotLS0tCi0g
TWFrZWZpbGUgfCAyICstCi0gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCi0KLS0tLSBhL01ha2VmaWxlCi0rKysgYi9NYWtlZmlsZQotQEAgLTM5OCw3ICszOTgs
NyBAQCBLQlVJTERfQUZMQUdTX0tFUk5FTCA6PQotIEtCVUlMRF9DRkxBR1NfS0VSTkVMIDo9Ci0g
S0JVSUxEX0FGTEFHU19NT0RVTEUgIDo9IC1ETU9EVUxFCi0gS0JVSUxEX0NGTEFHU19NT0RVTEUg
IDo9IC1ETU9EVUxFCi0tS0JVSUxEX0xERkxBR1NfTU9EVUxFIDo9IC1UICQoc3JjdHJlZSkvc2Ny
aXB0cy9tb2R1bGUtY29tbW9uLmxkcwotK0tCVUlMRF9MREZMQUdTX01PRFVMRSA9IC1UICQoc3Jj
dHJlZSkvc2NyaXB0cy9tb2R1bGUtY29tbW9uLmxkcyAkKGlmICQoQ09ORklHX1BST0ZJTElORyks
LC1zKQotIEdDQ19QTFVHSU5TX0NGTEFHUyA6PQotIAotICMgUmVhZCBLRVJORUxSRUxFQVNFIGZy
b20gaW5jbHVkZS9jb25maWcva2VybmVsLnJlbGVhc2UgKGlmIGl0IGV4aXN0cykKLS0gCjEuOS4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
