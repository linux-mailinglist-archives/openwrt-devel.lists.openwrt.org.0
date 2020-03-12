Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22C3182654
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 01:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=J03UcofCQzgrcOP78NYHJQcfQQqP/nn5pJEn/6qhDTk=; b=AOIaLiXcvgITE4
	q6jDkH9aWGSZRrTE44Fe//BJqZqXS5bwZMhUUNaVS8K5dImy8y+IvS/RIPjmJ8Lz/7SSy3P7fADZF
	7chH8DX5/NeuX0G1gUfVGfWw8rtXU+ioXxwPDXrH4purlGgaSg9GG/7zzPdUZhzxb4qZMqVDpaOHM
	LE/+Dk25+YU/G845rAeLFy0NTBHC6/fYmKeQSYI97BRBShJtdt2sggeF+WPX2NvbMk6TCDixejaKe
	sNQQzDuk3rWKkiI6CrrQM3oLRig0QJSGnTKArFM1YybSzqc5Nfb9h0Bv8KoDjQKaE4q5iZkE/XKnW
	jn5g6XN8a/LNpKKzB/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCC2M-0003ti-GO; Thu, 12 Mar 2020 00:49:22 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCC2F-0003tC-Ro
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 00:49:17 +0000
X-Originating-IP: 168.105.238.220
Received: from localhost (unknown [168.105.238.220])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 232CC240008;
 Thu, 12 Mar 2020 00:48:54 +0000 (UTC)
In-Reply-To: <20200311111243.GA64333@meh.true.cz>
Date: Wed, 11 Mar 2020 14:46:08 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Message-Id: <C18FWRNQI277.MSKDLBPIT3PY@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_174916_035589_23ECF521 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH v5] build: refactor JSON info files to
 `profiles.json`
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkIE1hciAxMSwgMjAyMCBhdCAyOjEyIEFNIFBTVCwgUGV0ciDFoHRldGlhciB3cm90ZToK
PiBQYXVsIFNwb29yZW4gPG1haWxAYXBhcmNhci5vcmc+IFsyMDIwLTAzLTEwIDE4OjExOjIxXToK
Pgo+ID4gKyAgJCQoX1RBUkdFVCk6ICQoQlVJTERfRElSKS9qc29uX2luZm9fZmlsZXMvJChjYWxs
IElNQUdFX05BTUUsJCgxKSwkKDIpKS5qc29uCj4gPiArICAkKEJVSUxEX0RJUikvanNvbl9pbmZv
X2ZpbGVzLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSkuanNvbjogJChCSU5fRElSKS8kKGNh
bGwgSU1BR0VfTkFNRSwkKDEpLCQoMikpJCQoR1pfU1VGRklYKQo+Cj4gVGhpcyBKU09OIGZpbGUg
dGFyZ2V0IGlzIHJlbGF0aXZlbHkgbG9uZywgdXNlZCB0d2ljZSBhbHJlYWR5LCBwZXJoYXBzCj4g
dXNpbmcKPiBjb21tb24gc2hvcnQgdmFyaWFibGUgd291bGQgbWFrZSBzZW5zZSBoZXJlLgoKJChK
U09OX0lORk9fRklMRSkgaW50cm9kdWNlZAoKPgo+ID4gIAkJJChUT1BESVIpL3NjcmlwdHMvanNv
bl9hZGRfaW1hZ2VfaW5mby5weSBcCj4KPiBZb3UncmUgbWlzc2luZyBoZXJlIHRoYXQgb3V0cHV0
IGZpbGUgYXJndW1lbnQuCgpOb3cgdXNlcyAkJEAKCj4KPiA+ICsgIFJPT1RGUy8kKDEpLyQoMykg
Oj0gXAo+ID4gKwkkKEtESVIpL3Jvb3QuJCgxKSQkKHN0cmlwIFwKPiA+ICsJCSQkKGlmICQkKEZT
X09QVElPTlMvJCgxKSksK2ZzPSQkKGNhbGwgcGFyYW1fbWFuZ2xlLCQkKEZTX09QVElPTlMvJCgx
KSkpKSBcCj4gPiArCSkkJChzdHJpcCBcCj4gPiArCQkkKGlmICQoVEFSR0VUX1BFUl9ERVZJQ0Vf
Uk9PVEZTKSwrcGtnPSQkKFJPT1RGU19JRC8kKDMpKSkgXAo+ID4gKwkpCj4gPiArICBpZm5kZWYg
SUIKPiA+ICsgICAgJCQoUk9PVEZTLyQoMSkvJCgzKSk6ICQoaWYgJChUQVJHRVRfUEVSX0RFVklD
RV9ST09URlMpLHRhcmdldC1kaXItJCQoUk9PVEZTX0lELyQoMykpKQo+ID4gKyAgZW5kaWYKPiA+
ICsgICQoS0RJUikvdG1wLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSk6ICQkKEtESVJfS0VS
TkVMX0lNQUdFKSAkJChST09URlMvJCgxKS8kKDMpKQo+ID4gKwlAcm0gLWYgJCRACj4gPiArCVsg
LWYgJCQod29yZCAxLCQkXikgLWEgLWYgJCQod29yZCAyLCQkXikgXQo+ID4gKwkkJChjYWxsIGNv
bmNhdF9jbWQsJChpZiAkKElNQUdFLyQoMikvJCgxKSksJChJTUFHRS8kKDIpLyQoMSkpLCQoSU1B
R0UvJCgyKSkpKQo+ID4gKwo+ID4gKyAgLklHTk9SRTogJChCSU5fRElSKS8kKGNhbGwgSU1BR0Vf
TkFNRSwkKDEpLCQoMikpCj4gPiArCj4gPiArICAkKEJJTl9ESVIpLyQoY2FsbCBJTUFHRV9OQU1F
LCQoMSksJCgyKSkuZ3o6ICQoS0RJUikvdG1wLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSkK
PiA+ICsJZ3ppcCAtYyAtOW4gJCReID4gJCRACj4gPiArCj4gPiArICAkKEJJTl9ESVIpLyQoY2Fs
bCBJTUFHRV9OQU1FLCQoMSksJCgyKSk6ICQoS0RJUikvdG1wLyQoY2FsbCBJTUFHRV9OQU1FLCQo
MSksJCgyKSkKPiA+ICsJY3AgJCReICQkQAo+ID4gKwo+Cj4gSXMgdGhpcyByZW9yZGVyaW5nIG5l
Y2Vzc2FyeT8gSWYgc28sIEkgd291bGQgcHJvYmFibHkgZG8gdGhhdCBpbgo+IHNlcGFyYXRlIHBh
dGNoIGZvcgo+IGVhc2llciByZXZpZXcuCgpOb3cgYWdhaW4gaW4gb2xkIG9yZGVyIGFuZCBzdGls
bCB3b3JrcwoKPgo+ID4gZGlmZiAtLWdpdCBhL3RhcmdldC9pbWFnZWJ1aWxkZXIvZmlsZXMvTWFr
ZWZpbGUgYi90YXJnZXQvaW1hZ2VidWlsZGVyL2ZpbGVzL01ha2VmaWxlCj4gPiBpbmRleCAxNWIz
ZDVjMzVjLi43ZDVlZGRhZmY2IDEwMDY0NAo+ID4gLS0tIGEvdGFyZ2V0L2ltYWdlYnVpbGRlci9m
aWxlcy9NYWtlZmlsZQo+ID4gKysrIGIvdGFyZ2V0L2ltYWdlYnVpbGRlci9maWxlcy9NYWtlZmls
ZQo+ID4gQEAgLTExOCw2ICsxMTgsNyBAQCBfY2FsbF9pbWFnZTogc3RhZ2luZ19kaXIvaG9zdC8u
cHJlcmVxLWJ1aWxkCj4gPiAgCSQoTUFLRSkgcGFja2FnZV9pbnN0YWxsCj4gPiAgCSQoTUFLRSkg
LXMgcHJlcGFyZV9yb290ZnMKPiA+ICAJJChNQUtFKSAtcyBidWlsZF9pbWFnZQo+ID4gKwkkKGlm
ICQoQ09ORklHX0pTT05fT1ZFUlZJRVdfSU1BR0VfSU5GTyksJChfU0lOR0xFKSQoU1VCTUFLRSkg
LXIganNvbl9vdmVydmlld19pbWFnZV9pbmZvKQo+ID4gIAkkKE1BS0UpIC1zIGNoZWNrc3VtCj4K
PiBTZWVtcyBsaWtlIGNvcHkmcGFzdGUgZnJvbSB0aGUgYHdvcmxkYCB0YXJnZXQuIEkgdGhpbmss
IHRoYXQ6Cj4KPiAkKE1BS0UpIC1zIGpzb25fb3ZlcnZpZXdfaW1hZ2VfaW5mbwo+Cj4gd291bGQg
bWFrZSBtb3JlIHNlbnNlIGhlcmUuCgpBQ0ssIGMmcCBpbmRlZWQKCj4gSSB3b3VsZCBhcyB3ZWxs
IG1vdmUgdGhhdCBpZiBzb21ld2hlcmUgZWxzZS4KCldoZXJlIHNob3VsZCBJIG1vdmUgaXQ/IElu
dG8gdGhlICQoQklOX0RJUikvcHJvZmlsZXMuanNvbiB0YXJnZXQ/Cgo+Cj4gPiB3b3JsZDogcHJl
cGFyZSAkKHRhcmdldC9zdGFtcC1jb21waWxlKSAkKHBhY2thZ2Uvc3RhbXAtY29tcGlsZSkgJChw
YWNrYWdlL3N0YW1wLWluc3RhbGwpICQodGFyZ2V0L3N0YW1wLWluc3RhbGwpIEZPUkNFCj4gPiAg
ICAgICAgJChfU0lOR0xFKSQoU1VCTUFLRSkgLXIgcGFja2FnZS9pbmRleAo+ID4gKyAgICAgICAk
KGlmICQoQ09ORklHX0pTT05fT1ZFUlZJRVdfSU1BR0VfSU5GTyksJChfU0lOR0xFKSQoU1VCTUFL
RSkgLXIganNvbl9vdmVydmlld19pbWFnZV9pbmZvKQo+ID4gICAgICAgICAkKF9TSU5HTEUpJChT
VUJNQUtFKSAtciBjaGVja3N1bQo+Cj4gU2FtZSBoZXJlLCBtb3ZlIHRoYXQgaWYgYW5kIHRoZSBj
b21tb24gcGxhY2UgdG8gbm90IHJlcGVhdCB0aGF0Cj4gY29uZGl0aW9uIHR3byB0aW1lcyBldGMu
Cj4KPiAkKF9TSU5HTEUpJChTVUJNQUtFKSAtciBqc29uX292ZXJ2aWV3X2ltYWdlX2luZm8KClVw
ZGF0ZWQsIHNhbWUgcXVlc3Rpb24gcmVnYXJkaW5nIHRoZSBJRgoKVGhhbmtzLApQYXVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
