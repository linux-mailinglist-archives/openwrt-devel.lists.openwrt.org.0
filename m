Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581D91EBBB6
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jun 2020 14:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nBlubmYIFxcUkcCVsBfG8jf1aMWu8u8jIq7saHCj658=; b=r6DZ/Vkafh74gMPNernltWlne
	05mcIYfI3eaqqL0Jk0XjZUAcXSp4NAto8bGb6+VqKXy5NVEIAj8mhSe94v5ySjWNWyKaBSNOJEwLk
	5fOW7X6PEALwsmosy4RqSDHMvWt8Dzicm5dFHRUKkhGytp6lq/xyhlChA2v5SCkjDdtTwzjmglDdm
	0EMQFZg2lmM/F5pWy1bxM78/p/ZnkJPNg+/as9Y3hPstMLwBy2onFRcHldz+pi1nHh5cEy2v0IPTw
	7Rp7KoVBbOgSe0TZngGn3fnKrTMOPT5wDpLtMOx9eXNUq5kZNqXqITadAaHV6sNHKVyk+23o6al6x
	TziB2BEmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg65W-0006YE-8A; Tue, 02 Jun 2020 12:32:14 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg65N-0006XT-Bo
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 12:32:07 +0000
Received: by mail.pbx.lv (MailSystem, from userid 80)
 id 74A561A60A8; Tue,  2 Jun 2020 15:32:00 +0300 (EEST)
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Date: Tue, 02 Jun 2020 15:32:00 +0300
From: Roman Yeryomin <roman@advem.lv>
In-Reply-To: <20200601205157.GG58206@meh.true.cz>
References: <20200601205157.GG58206@meh.true.cz>
Message-ID: <f1fcbaf889bdad6935070b39dcea5617@advem.lv>
X-Sender: roman@advem.lv
User-Agent: Roundcube Webmail/1.0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_053205_573337_83BDBA2D 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Michael Jones <mike@meshplusplus.com>, Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAyMC0wNi0wMSAyMzo1MSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBSb21hbiBZZXJ5b21p
biA8cm9tYW5AYWR2ZW0ubHY+IFsyMDIwLTA2LTAxIDE4OjMyOjI2XToKPiAKPiBIaSwKPiAKPj4g
U2V0IENDQUNIRV9ESVIgdG8gJChUT1BESVIpLy5jY2FjaGUgYW5kIENDQUNIRV9CQVNFRElSIHRv
ICQoVE9QRElSKS4KPiAKPiB0aGlzIGNoYW5nZXMgbG9jYXRpb24gb2YgY2NhY2hlIGRpcmVjdG9y
eSAocGVvcGxlIHdvdWxkIG5lZWQgdG8gbW92ZSAKPiBpdCwKPiBzeW1saW5rIGJhY2sgb3Igb3Zl
cnJpZGUgaXQpIGFuZCB3aXRoIENDQUNIRV9CQVNFRElSIGl0IHByb2JhYmx5IGFsc28KPiBpbnZh
bGlkYXRlcyB0aGUgY3VycmVudCBjYWNoZS9oYXNoZXMsIGRvZXNuJ3QgaXQ/CgpZZXMuCkknbSBu
b3QgMTAwJSBzdXJlIGJ1dCBmb3IgbWUgaXQgbWFrZXMgbW9yZSBzZW5zZSB0byBtYWtlIHNlcGFy
YXRlIGNjYWNoZSAKZGlycyBmb3IgZWFjaCByZXBvIC0tIGVhc2llciB0byBtYW5hZ2UgYW5kIGxl
c3MgY29ycnVwdGlvbiBwb3NzaWJpbGl0eS4KCj4gQlRXIHlvdSd2ZSBtaXNzZWQgZm9sbG93aW5n
IGhhcmRjb2RlZCBwYXR0ZXJuczoKPiAKPiAgdGFyZ2V0L3Rvb2xjaGFpbi9NYWtlZmlsZTpFWENM
VURFX0RJUlM6PSovY2NhY2hlCj4gIHRhcmdldC9zZGsvTWFrZWZpbGU6RVhDTFVERV9ESVJTOj0q
L2NjYWNoZS8qCgpIbW0sIG1pc3NlZCB0aGF0LCB3aWxsIGxvb2suCgo+PiBUaGlzIGFsbG93cyB0
byBkbyBjbGVhbiBhbmQgZGlyY2xlYW4uCj4gCj4gSXNuJ3QgaXQgZGVzaXJlZCB0byByZW1vdmUg
cG90ZW50aWFsbHkgYnJva2VuIGNjYWNoZSBhcyB3ZWxsIHdpdGgKPiBjbGVhbi9kaXJjbGVhbj8g
RG8gSSB3YW50IHRvIHJlbW92ZSBteSBjb25maWcsIGRvd25sb2FkcywgZmVlZHMgZXRjLiBpbiAK
PiBvcmRlcgo+IHRvIHJlbW92ZSBjY2FjaGU/CgpJTU8gaXQncyBkZXNpcmVkIHRvIGNjYWNoZSBo
b3N0IHRvb2xzLCB3aGljaCBhcmUgY2xlYW5lZCBvbmx5IHdpdGggCmRpcmNsZWFuLgpJdCdzIGFs
d2F5cyBwb3NzaWJsZSB0byBqdXN0IHJtIC1yZiAuLy5jY2FjaGUgc2FtZSBhcyB3aXRoIC4vdG1w
LwpPZiBjYXVzZSB3ZSBjYW4gbWFrZSBhbm90aGVyIG1ha2UgdGFyZ2V0LCBsaWtlIGNhY2hlY2xl
YW4gYnV0IG5vdCBzdXJlIAppZiBpdCdzIHdvcnRoIGRvaW5nLgoKPj4gKysrIGIvaW5jbHVkZS9o
b3N0LWJ1aWxkLm1rCj4+ICsgICQoaWYgJChDT05GSUdfQ0NBQ0hFKSwkKDEpIDogZXhwb3J0IAo+
PiBDQ0FDSEVfQ09NUElMRVJDSEVDSzo9JWNvbXBpbGVyJSAtZHVtcG1hY2hpbmU7ICVjb21waWxl
ciUgCj4+IC1kdW1wdmVyc2lvbikKPiAKPiB5b3UndmUgbWlzc2VkIHRvIGRlc2NyaWJlIHRoaXMg
Y2hhbmdlCgpUaGlzIHBhdHRlcm4gd2FzIHRha2VuIGZyb20gcGFja2FnZSBjY2FjaGUsIHdoaWNo
IGxvb2tzIHNhbmUgdG8gbWUuIElmIAp5b3UgaGF2ZSBvdGhlciBvcGluaW9uLCBwbGVhc2Ugc2hh
cmUuCgo+PiAgZGlzdGNsZWFuOgo+PiAgCXJtIC1yZiBiaW4gYnVpbGRfZGlyIC5jb25maWcqIGRs
IGZlZWRzIGtleS1idWlsZCogbG9ncyBwYWNrYWdlL2ZlZWRzIAo+PiBwYWNrYWdlL29wZW53cnQt
cGFja2FnZXMgc3RhZ2luZ19kaXIgdG1wCj4+ICsJcm0gLXJmICQoVE9QRElSKS8uY2NhY2hlCj4g
Cj4gT3RoZXIgQ0NBQ0hFX0RJUiB2YXJpYWJsZSBvY2N1cmVuY2llcyBjYW4gYmUgb3ZlcnJpZGVu
LCB0aGlzIGlzIAo+IGhhcmRjb2RlZAo+IHBhdGguCgpPSywgdGhpcyBzaG91bGQgYmUgcm0gLXJm
ICQoQ0NBQ0hFX0RJUikgcHJvYmFibHkuCgo+IE1pY2hhZWwgSm9uZXMgPG1pa2VAbWVzaHBsdXNw
bHVzLmNvbT4gWzIwMjAtMDYtMDEgMTM6MzQ6NTFdOgo+IAo+PiBIYXZpbmcgYnVpbGQgYmVoYXZp
b3IgY2hhbmdlIGJhc2VkIG9uIGEgc3ltbGluayBpcyB1bmRlc2lyYWJsZS4KPiAKPiBgbWFrZSBD
Q0FDSEVfRElSPS93aGF0ZXZlcmAgc2hvdWxkIHdvcmsgYXMgd2VsbAo+IAo+PiBBZGRpdGlvbmFs
bHksIGhhdmluZyB0aGUgY2NhY2hlIGRpcmVjdG9yeSBiZSBhIGNvbmZpZ3VyYXRpb24gb3B0aW9u
IAo+PiBhbGxvd3MKPj4gaXQgdG8gcGVyc2lzdCBhY3Jvc3MgY2xvbmVzIG9mIHRoZSBnaXQgcmVw
b3NpdG9yeSwgaWYgdGhlIC5jb25maWcgZmlsZSAKPj4gaXMKPj4gc3RvcmVkIGluIGdpdC4KPiAK
PiBCVFcgLmNvbmZpZyBpcyAuZ2l0aWdub3JlZCBmb3IgYSByZWFzb24uCj4gCj4gQW55d2F5LCBJ
IGRvbid0IHRoaW5rLCB0aGF0IGJsb2F0aW5nIHRoZSBtZW51IGNvbmZpZyB3aXRoIGV2ZXJ5IE1h
a2UgCj4gdmFyaWFibGUKPiBmcm9tIG5vdyBvbiBpcyBkZXNpcmVkLiBTeXN0ZW0gaGFzIHNhbmUg
ZGVmYXVsdHMgYW5kIGlzIGZsZXhpYmxlIGVub3VnaCAKPiB0bwo+IGFsbG93IGZpbmUgdHVubmlu
ZyBpZiBuZWVkZWQuCj4gCj4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
