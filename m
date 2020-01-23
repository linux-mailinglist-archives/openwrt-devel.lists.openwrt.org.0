Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C134E146373
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 09:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS1J3v/z4CIGFN8feVVEbB69q0tAmFjIukKoVdqmTs4=; b=MSwvUh9nTx0qt/
	eByWDcMK+VL7uncjDTU7zG7Meqx3/wTEYmyxnKa1PyK58/JBmhoh94WNT7tKo2ej/EdfTAhqJb1j0
	MBal1ijx08soS3c+uBahccXz7CSzWjFnkkBrpgiXK3EeAwCMVDt+H0Yb/il8KyN7i2P3i74ZEoPaq
	PnoTP+xroE01jEuM6o07nkhW5Ez/fckUFuplRlsPTfLNcUr1HJ+UiKTxOZwHLzX6IhQkPoGEBUlX4
	WuCXoS1maO6KQ6RqpFJmof/1oRxJFU83lwTFEmCyL3vdS9C6Isf+WzWRBpJtil4YofPMeVGPOLTs0
	XtoDG14XXrVrus86brYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuXoQ-0002wA-Rf; Thu, 23 Jan 2020 08:26:02 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuXoI-0002vU-K6
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 08:25:56 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:288:8640:e4fc:6bff:feea:ad23])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 00N8Pkuo020003
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 23 Jan 2020 09:25:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1579767947; bh=oAPLmou1C9+tg5rWdYCKQWTyOLsjgvV2tqVvWLaoOGc=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=Qv6MElARbTdqxoPtALoSOKdj1PYo87s76JYzhbnkStI53cd/O1atlViPxT3vmPLzh
 8S33UEW5gmz7rSO3UeaxPnRaXY88mWdbJq592a8WPNkE1ioj+kH9I2oUyoE4sxON0B
 NulOe83uH8tpvLVDSMDqDXE8u7R8AvTXe8PQnmq8=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iuXo4-00021o-IV; Thu, 23 Jan 2020 09:25:40 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Rosen Penev <rosenp@gmail.com>
Organization: m
References: <20200122230022.16876-1-rosenp@gmail.com>
Date: Thu, 23 Jan 2020 09:25:40 +0100
In-Reply-To: <20200122230022.16876-1-rosenp@gmail.com> (Rosen Penev's message
 of "Wed, 22 Jan 2020 15:00:22 -0800")
Message-ID: <87h80mfukb.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_002555_163307_B940EFCF 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IHdyaXRlczoKCj4gU2V2ZXJhbCB1c2VycyBo
YXZlIGJlZW4gcmVwb3J0aW5nIGNyYXNoaW5nIGlzc3VlcyB3aXRoIHRoZSBldGhlcm5ldAo+IGRy
aXZlci4KPgo+IE9uZSBzb3VyY2Ugc2F5cyB0aGF0IHRoaXMgaXMgYSBzaWxpY29uIGJ1ZyBpbiBt
dDc2MjE6Cj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvbXQ3Ni9pc3N1ZXMvMjExI2lzc3Vl
Y29tbWVudC01Njk2ODc1MDYKPgo+IEEgdXNlciB0aGF0IGhhcyBiZWVuIHRlc3RpbmcgdGhpcyBo
YXMgc2VlbiBncmVhdGVyIHRoYW4gMi0zIGRheXMgdXB0aW1lCj4gb2YgdGhlIGV0aGVybmV0IGlu
dGVyZmFjZSB3aXRoIHRoaXMgY2hhbmdlOgo+IGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9t
dGstc29jLWV0aC13YXRjaGRvZy10aW1lb3V0LWFmdGVyLXIxMTU3My81MDAwMC8xMgo+Cj4gU2ln
bmVkLW9mZi1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+Cj4gLS0tCj4gIC4uLi9m
aWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEuYyAgICAg
fCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvZ3N3X210NzYyMS5jIGIvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEuYwo+
IGluZGV4IDg5YmUyMzkwMDcuLmJkMGU1NTVlMzUgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2
MjEuYwo+ICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWRpYXRlay9nc3dfbXQ3NjIxLmMKPiBAQCAtOTgsOCArOTgsOCBAQCBzdGF0aWMg
dm9pZCBtdDc2MjFfaHdfaW5pdChzdHJ1Y3QgbXQ3NjIwX2dzdyAqZ3N3LCBzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wKQo+ICAJbXQ3NTMwX21kaW9fdzMyKGdzdywgMHg3MDAwLCAweDMpOwo+ICAJdXNs
ZWVwX3JhbmdlKDEwLCAyMCk7Cj4gIAo+IC0JaWYgKChydF9zeXNjX3IzMihTWVNDX1JFR19DSElQ
X1JFVl9JRCkgJiAweEZGRkYpID09IDB4MDEwMSkgewo+IC0JCS8qIChHRTEsIEZvcmNlIDEwMDBN
L0ZELCBGQyBPTiwgTUFYX1JYX0xFTkdUSCAxNTM2KSAqLwo+ICsJaWYgKChydF9zeXNjX3IzMihT
WVNDX1JFR19DSElQX1JFVl9JRCkgJiAweEZGRkYpID49IDB4MDEwMSkgewo+ICsJCS8qIChHRTEs
IEZvcmNlIDEwMDBNL0ZELCBGQyBPRkYsIE1BWF9SWF9MRU5HVEggMTUzNikgKi8KPiAgCQltdGtf
c3dpdGNoX3czMihnc3csIDB4MjMwNWUzMGIsIEdTV19SRUdfTUFDX1AwX01DUik7Cj4gIAkJbXQ3
NTMwX21kaW9fdzMyKGdzdywgMHgzNjAwLCAweDVlMzBiKTsKPiAgCX0gZWxzZSB7CgpJZiB0aGF0
J3MgcmVhbGx5IGhlbHBpbmcgdGhlbiBJIGJlbGlldmUgaXQgd291bGQgYmUgdXNlZnVsIHRvIGFk
ZCBzb21lCnNvcnQgb2YgY2hpcF9yZXZfaWQgcHJpbnRrIGhlcmUuICBXb3VsZCBiZSBnb29kIHRv
IGtub3cgd2hvIGhpdHMgdGhpcwphbmQgd2h5Li4uCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
