Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4972158C82
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 11:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=6vmmUPTHvBMJQV9QJ/9H7d9dh75b0dxoCBGkO7wE5A4=; b=K1i5tOn3BXBbZj
	q5DaWMgwIADAh1u9TzHxvfQRLQgZVlLGg4jdg1TSCBMSGMalfncTBW8jxJ90XcEjxmv2kAaZjSJFW
	6B+Xr+p2iRABdsKTfkzz1Fvt5It+qde/kkT+Q+sksXIQ51pMH17crUVdmOiYHm05JFt16NopB73nu
	B62hChS9mtXb3fcLbcPfue7tslPNus/KENpITlrWBZJEoD3XEwSkvVtwibUG4LIWAJkIxTGwWWmKd
	rOpJqKkz2h1eP2qJnMYZALbiNEeDme7Eit3gD/59KHQQquohzEtJXJkYZMf2OYTfbGkQWG4w2uAlL
	y/Bo1rt3HcpKPxQ+OFiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ScN-0003GW-O0; Tue, 11 Feb 2020 10:18:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ScF-0003G8-OH
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 10:18:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1962B4455;
 Tue, 11 Feb 2020 11:17:50 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f5b82cf8;
 Tue, 11 Feb 2020 11:17:38 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 11 Feb 2020 11:17:41 +0100
Message-Id: <20200211101741.17350-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_021803_939310_9A7B4169 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
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
 Rosen Penev <rosenp@gmail.com>, Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TG9va2luZyBhdCB0aGUgY3VycmVudCB1cHN0cmVhbSBkcml2ZXIgaW1wbGVtZW50YXRpb24sIGl0
IHNlZW1zIGxpa2UgdGhlClRYL1JYIGZsb3cgY29udHJvbCBpcyBlbmFibGVkIG9ubHkgaWYgdGhl
IGZsb3cgY29udHJvbCBwYXVzZSBvcHRpb24gaXMKcmVzb2x2ZWQgZnJvbSB0aGUgZGV2aWNlL2xp
bmsgcGFydG5lciBhZHZlcnRpc2VtZW50cyAob3Igb3RoZXJ3aXNlIHNldCkuCgpPbiB0aGUgb3Ro
ZXIgaGFuZCwgb3VyIGN1cnJlbnQgaW4tdHJlZSBkcml2ZXIgZm9yY2UgZW5hYmxlcyBUWC9SWApm
bG93IGNvbnRyb2wgYnkgZGVmYXVsdCwgdGh1cyBwb3NzaWJseSBsZWFkaW5nIHRvIFRYIHRpbWVv
dXRzIGlmIHRoZQpvdGhlciBlbmQgc2VuZHMgcGF1c2UgZnJhbWVzICh3aGljaCBhcmUgbm90IHBy
b3Blcmx5IGhhbmRsZWQ/KToKCiBXQVJOSU5HOiBDUFU6IDMgUElEOiAwIGF0IG5ldC9zY2hlZC9z
Y2hfZ2VuZXJpYy5jOjMyMCBkZXZfd2F0Y2hkb2crMHgxYWMvMHgzMjQKIE5FVERFViBXQVRDSERP
RzogZXRoMCAobXRrX3NvY19ldGgpOiB0cmFuc21pdCBxdWV1ZSAwIHRpbWVkIG91dAoKRGlzYWJs
aW5nIHRoZSBmbG93IGNvbnRyb2wgb24gUE9SVCA1IE1BQyBzZWVtcyB0byBmaXggdGhpcyBpc3N1
ZXMgYXMgdGhlCnBhdXNlIGZyYW1lcyBhcmUgdGhlbiBmaWx0ZXJlZCBvdXQuIFdoaWxlIGF0IGl0
LCBJJ20gcmVtb3ZpbmcgdGhlIGlmCmNvbmRpdGlvbiBjb21wbGV0ZWx5IGFzIHN1Z2dlc3RlZCwg
c2luY2UgdGhpcyBjb2RlIGlzIHJ1biBvbmx5IG9uIG10NzYyMQpTb0MsIHNvIHRoZXJlIGlzIG5v
IG5lZWQgdG8gY2hlY2sgZm9yIHRoZSBzaWxpY29uIHJldmlzaW9ucy4KClJlZjogaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZlbC8yMDE3LU5vdmVtYmVyLzAw
OTg4Mi5odG1sClJlZjogaHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L210ay1zb2MtZXRoLXdh
dGNoZG9nLXRpbWVvdXQtYWZ0ZXItcjExNTczLzUwMDAwLzEyClN1Z2dlc3RlZC1ieTogRmVsaXgg
RmlldGthdSA8bmJkQG5iZC5uYW1lPgpSZXBvcnRlZC1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBn
bWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0t
LQogLi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEuYyAgICAgICB8
IDEyICsrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgOSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJp
dmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvZ3N3X210NzYyMS5jIGIvdGFyZ2V0L2xpbnV4L3Jh
bWlwcy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEu
YwppbmRleCA4OWJlMjM5MDA3MzguLjIzMmJjZDhjZjRlYSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xp
bnV4L3JhbWlwcy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19t
dDc2MjEuYworKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvbWVkaWF0ZWsvZ3N3X210NzYyMS5jCkBAIC05OCwxNSArOTgsOSBAQCBzdGF0aWMg
dm9pZCBtdDc2MjFfaHdfaW5pdChzdHJ1Y3QgbXQ3NjIwX2dzdyAqZ3N3LCBzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wKQogCW10NzUzMF9tZGlvX3czMihnc3csIDB4NzAwMCwgMHgzKTsKIAl1c2xlZXBf
cmFuZ2UoMTAsIDIwKTsKIAotCWlmICgocnRfc3lzY19yMzIoU1lTQ19SRUdfQ0hJUF9SRVZfSUQp
ICYgMHhGRkZGKSA9PSAweDAxMDEpIHsKLQkJLyogKEdFMSwgRm9yY2UgMTAwME0vRkQsIEZDIE9O
LCBNQVhfUlhfTEVOR1RIIDE1MzYpICovCi0JCW10a19zd2l0Y2hfdzMyKGdzdywgMHgyMzA1ZTMw
YiwgR1NXX1JFR19NQUNfUDBfTUNSKTsKLQkJbXQ3NTMwX21kaW9fdzMyKGdzdywgMHgzNjAwLCAw
eDVlMzBiKTsKLQl9IGVsc2UgewotCQkvKiAoR0UxLCBGb3JjZSAxMDAwTS9GRCwgRkMgT04sIE1B
WF9SWF9MRU5HVEggMTUzNikgKi8KLQkJbXRrX3N3aXRjaF93MzIoZ3N3LCAweDIzMDVlMzNiLCBH
U1dfUkVHX01BQ19QMF9NQ1IpOwotCQltdDc1MzBfbWRpb193MzIoZ3N3LCAweDM2MDAsIDB4NWUz
M2IpOwotCX0KKwkvKiAoR0UxLCBGb3JjZSAxMDAwTS9GRCwgRkMgT0ZGLCBNQVhfUlhfTEVOR1RI
IDE1MzYpICovCisJbXRrX3N3aXRjaF93MzIoZ3N3LCAweDIzMDVlMzBiLCBHU1dfUkVHX01BQ19Q
MF9NQ1IpOworCW10NzUzMF9tZGlvX3czMihnc3csIDB4MzYwMCwgMHg1ZTMwYik7CiAKIAkvKiAo
R0UyLCBMaW5rIGRvd24pICovCiAJbXRrX3N3aXRjaF93MzIoZ3N3LCAweDgwMDAsIEdTV19SRUdf
TUFDX1AxX01DUik7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
