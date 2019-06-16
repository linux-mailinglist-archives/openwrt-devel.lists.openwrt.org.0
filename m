Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A528473B9
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 10:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrS8AdctxEd64aCop9Qn74xZnDNhKJYwEC6a/ioFL9w=; b=ArrH5LrKZguskd
	Olq00KZ0dmbvESUDCj54MmzORlwLyUA9nyDKf/WVVq0sOIy2p/XzR8tzrl1foUtCs/DsbobbV2GHd
	gkS5y/0nasxL+Wa/YC7Fra06ijyxCFqZ3QwOb6UFP/plsQmrXnsS5p9zfYKXodt8U9tPpyFNK+c2k
	zceZyxMw/rJDfbWbdRFMBlhtdZru1ruBNJPBYFPreZx9x8JZtnJDnKSKkSv2XPKhcaDRh+NXB/2rZ
	rxnyXQP6e0P+mjufJE6JxWpXE50+gkb8fYDVVt6YSQzDtiUcH8n77jRm9ELxZ8/swq3SCsi2UUX9z
	BVe0agVuqIjDdGUwSC8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcQ9w-00042k-7Z; Sun, 16 Jun 2019 08:05:04 +0000
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcQ9j-00042E-Il
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 08:04:53 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 05E9F73E8C;
 Sun, 16 Jun 2019 04:04:47 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:from
 :to:references:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=cgxn1jT/DK8u
 eMTCLAlHp993ZKk=; b=BZF6YgSfdEdhhLKGMWGahvp3teDGYigM31ldhl5Qx4qI
 ENQmxLPM4Qkpbhkz1jZikXJ9MhQFSwEKk8ixsTPX3vv2j86lel2sN9uO83bOx/eu
 l04sGX38lTI4hG6VWHQnvrEbtTGoxf0PnRvENmqq7OFBCMNPnf/dAhAwiU5eIcs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:from:to
 :references:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=TL5/qK
 ZBmU8yhdMrwzOU19ULQuPMdqLruOboUoe/ViEEGqHw+AU5IOqydvnbHHUrleUgit
 XhBz4wZwU2ZAVmY5BfwvPfHBz3M5lJv1d/F4FppzWOBA0zZa8/MXHQgNqmgO49mT
 5plb21EO2EBTEQgguJ5fbELsWx/lf8evsu7tM=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id F21DD73E8B;
 Sun, 16 Jun 2019 04:04:46 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 103CF73E8A;
 Sun, 16 Jun 2019 04:04:44 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
From: Daniel Santos <daniel.santos@pobox.com>
To: Daniel Golle <daniel@makrotopia.org>, Felix Fietkau <nbd@nbd.name>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 John Crispin <blogic@openwrt.org>, Michael Lee <igvtee@gmail.com>,
 netdev@vger.kernel.org
References: <2766c2b3-3262-78f5-d736-990aaa385eeb@pobox.com>
Message-ID: <6f21e283-60ef-7e0f-359b-fbd547ea7e2a@pobox.com>
Date: Sun, 16 Jun 2019 03:03:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2766c2b3-3262-78f5-d736-990aaa385eeb@pobox.com>
Content-Language: en-US
X-Pobox-Relay-ID: 66C1DCFE-900D-11E9-A67F-8D86F504CC47-06139138!pb-smtp21.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_010451_684111_5EBF8A67 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Understanding Ethernet Architecture (I/O -->
 MDIO --> MII vs I/O --> MAC) for mt7620 (OpenWRT)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QWggaGFoISBJJ3ZlIGZvdW5kIG15IGFuc3dlciBvbiBwYWdlIDM0MCAoNDE0LiBQSUFDOiBQSFkg
SW5kaXJlY3QgQWNjZXNzCkNvbnRyb2wob2Zmc2V0OjB4NzAwNCkpIGFuZCBpbiBtdDc2MjBfZ3N3
X2NvbmZpZzoKCnN0YXRpYyBpbnQgbXQ3NjIwX2dzd19jb25maWcoc3RydWN0IGZlX3ByaXYgKnBy
aXYpCnsKCXN0cnVjdCBtdDc2MjBfZ3N3ICpnc3cgPSAoc3RydWN0IG10NzYyMF9nc3cgKikgcHJp
di0+c29jLT5zd3ByaXY7CgoJLyogaXMgdGhlIG10NzUzMCBpbnRlcm5hbCBvciBleHRlcm5hbCAq
LwoJaWYgKHByaXYtPm1paV9idXMgJiYgbWRpb2J1c19nZXRfcGh5KHByaXYtPm1paV9idXMsIDB4
MWYpKSB7CgkJbXQ3NTMwX3Byb2JlKHByaXYtPmRldiwgZ3N3LT5iYXNlLCBOVUxMLCAwKTsKCQlt
dDc1MzBfcHJvYmUocHJpdi0+ZGV2LCBOVUxMLCBwcml2LT5taWlfYnVzLCAxKTsKCX0gZWxzZSB7
CgkJbXQ3NTMwX3Byb2JlKHByaXYtPmRldiwgZ3N3LT5iYXNlLCBOVUxMLCAxKTsKCX0KCglyZXR1
cm4gMDsKfQoKU28gcHJpdi0+bWlpX2J1cyBpcyBub24tbnVsbCB3aGVuIHRoZSBjaGlwJ3MgbmV0
d29yayBoYXJkd2FyZSBpcwpleHRlcm5hbCBiZWNhdXNlIHRoZSBzaW1pbGFybHkgKGFuZCBjb25m
dXNpbmdseSkgbmFtZWQgbXQ3NTMwIGlzIG9ubHkKdGhlIHN3aXRjaCBoYXJkd2FyZSwgd2hlcmUg
YXMgdGhlIG10NzYyMCBpcyBhIGZ1bGwgwrVDIHRoYXQgaGFzIGFuIG10NzUzMAppbnRlZ3JhdGVk
IGludG8gaXQuwqAgV2hpY2ggbGVhZHMgbWUgdG8gdGhlIHF1ZXN0aW9uIG9mIHdoYXQgIkdTVyIK
bWVhbnM/wqAgVGhpcyBpcyB0aGUgbmFtZSBvZiB0aGUgaGFyZHdhcmUgdGhhdCBoYXMgdGhlIFBJ
QUMgcmVnaXN0ZXIsIGJ1dApub3doZXJlIGluIHRoZSBkYXRhIHNoZWV0IG9yIHByb2dyYW1taW5n
IGd1aWRlIGNhbiBJIGZpbmQgYSBkZWZpbml0aW9uLgoKVGhhbmtzLApEYW5pZWwKCgpPbiA2LzE0
LzE5IDU6NTMgUE0sIERhbmllbCBTYW50b3Mgd3JvdGU6Cj4gSGVsbG8sCj4KPiBJJ20gc3RpbGwg
ZmFpcmx5IG5ldyB0byBFdGhlcm5ldCBkcml2ZXJzIGFuZCB0aGVyZSBhcmUgYSBsb3Qgb2YKPiBp
bnRlcmVzdGluZyBwaWVjZXMuwqAgV2hhdCBJIG5lZWQgaGVscCB3aXRoIGlzIHVuZGVyc3RhbmRp
bmcgTURJTyAtLT4KPiAoUilNSUkgdnMgZGlyZWN0IEkvTyB0byB0aGUgTUFDIChlLmcuLCB2aWEg
aW9yZWFkMzIsIGlvd3JpdGUzMikuwqAgV2h5IGlzCj4gdGhlcmUgbm90IGFsd2F5cyBhIHN0cnVj
dCBtaWlfYnVzIHRvIHRhbGsgdG8gdGhpcyBoYXJkd2FyZT/CoCBJcyBpdAo+IGJlY2F1c2UgdGhl
IFBIWSBhbmQvb3IgTUFDIGhhcmR3YXJlIHNvbWV0aW1lcyBhdHRhY2hlZCB2aWEgYW4gTURJTwo+
IGRldmljZSBhbmQgc29tZXRpbWVzIGRpcmVjdGx5IHRvIHRoZSBJL08gYnVzP8KgIE9yIGRvZXMg
c29tZSB0eXBlIG9mCj4gImluZGlyZWN0IGFjY2VzcyIgbmVlZCB0byBiZSBlbmFibGVkIGZvciB0
aGF0IHRvIHdvcms/Cj4KPiBJIG1pZ2h0IGJlIHRyeWluZyB0byBkbyBzb21ldGhpbmcgdGhhdCdz
IHVubmVjZXNzYXJ5IGhvd2V2ZXIsIEknbSBub3QKPiBzdXJlIHlldC7CoCBJIG5lZWQgdG8gYWRk
IGZ1bmN0aW9uYWxpdHkgdG8gY2hhbmdlIGEgcG9ydCdzCj4gYXV0by1uZWdvdGlhdGUsIGR1cGxl
eCwgZXRjLsKgIEknbSBhZGRpbmcgaXQgdG8gdGhlIHN3Y29uZmlnIGZpcnN0IGFuZAo+IHRoZW4g
d2lsbCBsb29rIGF0IGFkZGluZyBpdCBmb3IgRFNBIGFmdGVyd2FyZHMuwqAgV2hlbiBJIHJ1biAi
c3djb25maWcKPiBkZXYgc3dpdGNoMCBwb3J0IDAgc2hvdyIsIHRoZSBjdXJyZW50IG10NzUzMCAv
IG10NzYyMCBkcml2ZXIgaXMgcXVlcnlpbmcKPiB0aGUgTUFDIHN0YXR1cyByZWdpc3RlciAoYXQg
YmFzZSArIDB4MzAwOCArIDB4MTAwICogcG9ydCwgZGVzY3JpYmVkIG9uCj4gcGFnZXMgMzIzLTMy
NCBvZiB0aGUgTVQ3NjIwIFByb2dyYW1taW5nIEd1aWRlKSwgc28gSSBpbXBsZW1lbnRlZCB0aGUK
PiAic2V0IiBmdW5jdGlvbmFsaXR5IGJ5IG1vZGlmeWluZyB0aGUgTUFDJ3MgY29udHJvbCByZWdp
c3RlciAob2Zmc2V0Cj4gMHgzMDAwIG9uIHBhZ2UgMzIxKSwgYnV0IGl0IGRvZXNuJ3Qgc2VlbSB0
byBjaGFuZ2UgYW55dGhpbmcuwqAgU28gSQo+IGZpZ3VyZWQgbWF5YmUgSSBuZWVkIHRvIG1vZGlm
eSB0aGUgTUlJIGludGVyZmFjZSdzIGNvbnRyb2wgcmVnaXN0ZXIgZm9yCj4gdGhlIHBvcnQgKHBh
Z2UgMzUwKSwgYnV0IHVwb24gZGVidWdnaW5nIEkgY2FuIHNlZSB0aGF0IHRoZSBzdHJ1Y3QKPiBt
aWlfYnVzICpidXMgbWVtYmVyIGlzIE5VTEwuCj4KPiBTbyBzaG91bGQgSSBiZSBhYmxlIHRvIGNo
YW5nZSBpdCB2aWEgdGhlIE1BQydzIGNvbnRyb2wgcmVnaXN0ZXIgYW5kCj4gc29tZXRoaW5nIGVs
c2UgaXMgd3Jvbmc/wqAgV2h5IGlzIHRoZXJlIG5vIHN0cnVjdCBtaWlfYnVzP8KgIENhbiBJIHRh
bGsgdG8KPiB0aGUgTUlJIGhhcmR3YXJlIGluIHNvbWUgb3RoZXIgd2F5Pwo+Cj4gVGhhbmtzLAo+
IERhbmllbAo+Cj4gaHR0cHM6Ly9kb3dubG9hZC52aWxsYWdldGVsY28ub3JnL2hhcmR3YXJlL01U
NzYyMC9NVDc2MjBfUHJvZ3JhbW1pbmdHdWlkZS5wZGYKPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
