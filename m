Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC052186DC
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 10:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4oKRVaYz6B/iUgMtkzYgLmUW+X9BqVFvJs/mEK/bH04=; b=sr8sr30tbiAVc+Rzy+O8W/B7qR
	VeKEIhMAHnGiRms3clqGkp7+eHhhB2cTR3/El9iNoPdsDo5rzCQVZ3KAHcWgpHvAwVAC/fFrPBXFE
	NEhLZ4Xwok3XU336MaGVcWCZsR7o+OKfl4mh/x1QLgZf1bJhGwMauR1I4RbJi1XPnYjwomVoY9e6q
	w4Fn1/bBcuItCs88qp/c2EL5WXQkhxqSDCo/1YT26pO25Hd8AjQfeVq5xl5bLuJT3fDTKJk54GxnP
	RwPPgyp9qENAeEH02cBAf3Bmku87vuZhSasBBlR1wl+pXyPS6244ZmX4DYtaSLgUFz/x0ZKXm134t
	l93ZmYaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOeZ3-0008Io-8f; Thu, 09 May 2019 08:38:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeYr-0008I6-Ri
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 08:37:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EFAE247E7;
 Thu,  9 May 2019 10:37:48 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 82f52fae;
 Thu, 9 May 2019 10:37:47 +0200 (CEST)
Date: Thu, 9 May 2019 10:37:47 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stijn Segers <foss@volatilesystems.org>
Message-ID: <20190509083747.GO81826@meh.true.cz>
References: <1557087260-32680-3-git-send-email-ynezz@true.cz>
 <1557137638-1558-1-git-send-email-ynezz@true.cz>
 <1557340689.6377.0@mail.volatilesystems.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557340689.6377.0@mail.volatilesystems.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_013754_050723_0983B651 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] lantiq: image: build initramfs only
 for FRITZ7362SL
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U3Rpam4gU2VnZXJzIDxmb3NzQHZvbGF0aWxlc3lzdGVtcy5vcmc+IFsyMDE5LTA1LTA4IDIwOjM4
OjA5XToKCkhpLAoKPiBPcCBtYWFuZGFnIDYgbWVpIDIwMTkgb20gMTI6MTMgc2NocmVlZiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PjoKPiA+IENvbW1pdCAibGFudGlxL3hyeDIwMDogZW5h
YmxlIGluaXRyYW1mcyBpbWFnZXMiIGVuYWJsZWQgY3JlYXRpb24gb2YKPiA+IGluaXRyYW1mcyBp
bWFnZXMgZm9yIGFsbCBkZXZpY2VzIGluIGxhbnRpcSdzIHhyeDIwMCBzdWJ0YXJnZXQsIGp1c3QK
PiA+IGJlY2F1c2UgRlJJVFo3MzYyU0wgbmVlZHMgaW5pdHJhbWZzIGR1cmluZyBPcGVuV3J0IGlu
c3RhbGF0aW9uLgo+ID4gCj4gPiBUaGVuIERhdmlkIEJhdWVyIGluZm9ybWVkIG1lLCB0aGF0IEZS
SVRaIUJveCA3NDEyIGFsc28gbmVlZHMgYW4KPiA+IGluaXRyYW1mcwo+ID4gZm9yIGluaXRpYWwg
aW5zdGFsbGF0aW9uIFsxXSwgc28gSSd2ZSBhZGRlZCB0aGlzIGRldmljZSBpbnRvIHRoaXMgcGF0
Y2gKPiA+IGFzCj4gPiB3ZWxsLgo+ID4gCj4gPiBTbyB0aGlzIGNvbW1pdCBjaGFuZ2VzIGxhbnRp
cSB0byBzZWxlY3RpdmUtcmFtZGlzayBmZWF0dXJlIGFuZCBhZGRzCj4gPiBORUVEU19JTklUUkFN
RlM9MSB0byBGUklUWjczNjJTTCBhbmQgRlJJVFohQm94IDc0MTIgZGV2aWNlcyBvbmx5Lgo+IAo+
IEkgdGhpbmsgdGhpcyBpcyBhIG5pY2Ugc29sdXRpb24gdG8gd2hhdCB1cCB0aWxsIG5vdyB3YXMg
YSBwcm9iYWJseSBvdmVybHkKPiBicm9hZCBhcHByb2FjaC4gSSdtIHByb2JhYmx5IG5vdCBmYW1p
bGlhciBlbm91Z2gKPiB3aXRoIHRoZSB3aG9sZSBidWlsZHJvb3QsIGJ1dCB3b3VsZCB0aGUgb3Ro
ZXIgdGFyZ2V0cyB3aXRoIHRoZSByYW1kaXNrCj4gZmVhdHVyZSBub3QgbmVlZCBzaW1pbGFyIHNj
cnV0aW55PwoKdmVyeSBsaWtlbHkgeWVzLCBidXQgaXQgd291bGQgYmUgcHJldHR5IHRlZGlvdXMg
d29yayB0byBmaW5kIGRldmljZXMgd2hpY2gKd291bGQgbmVlZCBORUVEU19JTklUUkFNRlM9MSBh
bmQgc3dpdGNoIHRob3NlIHRhcmdldHMgdG8gc2VsZWN0aXZlLXJhbWRpc2sKaW5zdGVhZC4KCj4g
QSBxdWljayBncmVwIGZyb20gbWFzdGVyOgo+IAo+ICQgZ2l0IGdyZXAgRkVBVFVSRVMgdGFyZ2V0
L2xpbnV4L3xncmVwIHJhbWRpc2sKPiB0YXJnZXQvbGludXgvYXBtODIxeHgvbmFuZC90YXJnZXQu
bWs6RkVBVFVSRVMgKz0gbmFuZCBwY2llIHJhbWRpc2sgc3F1YXNoZnMgdXNiCj4gdGFyZ2V0L2xp
bnV4L2FwbTgyMXh4L3NhdGEvdGFyZ2V0Lm1rOkZFQVRVUkVTICs9IGV4dDQgdXNiIHJhbWRpc2sg
c3F1YXNoZnMgcm9vdGZzLXBhcnQgYm9vdC1wYXJ0Cj4gdGFyZ2V0L2xpbnV4L2FyNzF4eC9taWty
b3Rpay90YXJnZXQubWs6RkVBVFVSRVMgKz0gc3F1YXNoZnMgcmFtZGlzayBtaW5vciBuYW5kCj4g
dGFyZ2V0L2xpbnV4L2FyYzc3MC9nZW5lcmljL3RhcmdldC5tazpGRUFUVVJFUyArPSByYW1kaXNr
IHVzYiBleHQ0Cj4gdGFyZ2V0L2xpbnV4L2FyY2hzMzgvZ2VuZXJpYy90YXJnZXQubWs6RkVBVFVS
RVMgKz0gZXh0NCB1c2IgcmFtZGlzawo+IHRhcmdldC9saW51eC9hcm12aXJ0L01ha2VmaWxlOkZF
QVRVUkVTKz1jcGlvZ3ogZXh0NCByYW1kaXNrIHNxdWFzaGZzIHRhcmd6Cj4gdGFyZ2V0L2xpbnV4
L2F0aDc5L01ha2VmaWxlOkZFQVRVUkVTOj1yYW1kaXNrCj4gdGFyZ2V0L2xpbnV4L2lwcTQweHgv
TWFrZWZpbGU6RkVBVFVSRVM6PXNxdWFzaGZzIGZwdSByYW1kaXNrIG5hbmQKPiB0YXJnZXQvbGlu
dXgvaXBxODA2eC9NYWtlZmlsZTpGRUFUVVJFUzo9c3F1YXNoZnMgbmFuZCBmcHUgcmFtZGlzawo+
IHRhcmdldC9saW51eC9raXJrd29vZC9NYWtlZmlsZTpGRUFUVVJFUzo9dXNiIG5hbmQgc3F1YXNo
ZnMgcmFtZGlzawo+IHRhcmdldC9saW51eC9sYW50aXEveHJ4MjAwL3RhcmdldC5tazpGRUFUVVJF
Uzo9c3F1YXNoZnMgYXRtIG5hbmQgcmFtZGlzawo+IHRhcmdldC9saW51eC9sYW50aXEveHdheS90
YXJnZXQubWs6RkVBVFVSRVM6PXNxdWFzaGZzIGF0bSBuYW5kIHJhbWRpc2sKPiB0YXJnZXQvbGlu
dXgvbGFudGlxL3h3YXlfbGVnYWN5L3RhcmdldC5tazpGRUFUVVJFUzo9c3F1YXNoZnMgYXRtIHJh
bWRpc2sgc21hbGxfZmxhc2gKPiB0YXJnZXQvbGludXgvbWFsdGEvTWFrZWZpbGU6RkVBVFVSRVM6
PXJhbWRpc2sKPiB0YXJnZXQvbGludXgvbWVkaWF0ZWsvTWFrZWZpbGU6RkVBVFVSRVM6PXNxdWFz
aGZzIG5hbmQgcmFtZGlzayBmcHUKPiB0YXJnZXQvbGludXgvbXBjODV4eC9NYWtlZmlsZTpGRUFU
VVJFUzo9c3F1YXNoZnMgcmFtZGlzawo+IHRhcmdldC9saW51eC9tdmVidS9NYWtlZmlsZTpGRUFU
VVJFUzo9ZnB1IHVzYiBwY2kgcGNpZSBncGlvIG5hbmQgc3F1YXNoZnMgcmFtZGlzayBib290LXBh
cnQgcm9vdGZzLXBhcnQKPiB0YXJnZXQvbGludXgvb2N0ZW9uL01ha2VmaWxlOkZFQVRVUkVTOj1z
cXVhc2hmcyByYW1kaXNrIHBjaSB1c2IKPiB0YXJnZXQvbGludXgvb3huYXMvTWFrZWZpbGU6RkVB
VFVSRVM6PWdwaW8gcmFtZGlzayBydGMgc3F1YXNoZnMKPiB0YXJnZXQvbGludXgvcmFtaXBzL210
NzYyMS90YXJnZXQubWs6RkVBVFVSRVMrPW5hbmQgcmFtZGlzayBydGMgdXNiIG1pbm9yCj4gdGFy
Z2V0L2xpbnV4L3JhbWlwcy9ydDMwNXgvdGFyZ2V0Lm1rOkZFQVRVUkVTKz11c2IgcmFtZGlzayBz
bWFsbF9mbGFzaAoKd2hpY2ggbWFrZXMgbWUgd29uZGVyIGlmIHRoaXMgc2VsZWN0aXZlLXJhbWRp
c2sgcGF0Y2ggaXMgcmVhbGx5IHdvcnRoIHRoZQplZmZvcnQsIG1heWJlIHdlIHNob3VsZCBqdXN0
IHJlYWxseSBlbmFibGUgcmFtZGlzayBmZWF0dXJlIHdoZW4gdGhlIGluaXRyYW1mcwppcyBuZWVk
ZWQgZm9yIGFueSBkZXZpY2UgdW5kZXIgdGhhdCB0YXJnZXQgYW5kIGp1c3QgbGl2ZSB3aXRoIHRo
YXQgZmFjdC4KCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
