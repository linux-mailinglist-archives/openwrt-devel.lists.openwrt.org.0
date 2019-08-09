Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009D487E08
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 17:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2JPasOb+0DmGa2gGG4pWKcZK6eC0jOzz1Zu2J48JPvM=; b=fxXFhP+vHVuyJ4d9lawsS7K1B
	JELJIXijr8h2vRmIp3f8BeugJu3DTWIVL+2Nt1EPV7XGFys+DcyVEvOKBlJd69SygorxM/35qgm6K
	TUCIhbnMl1+iyP/1WlEqV7Wq3YZH43V43EsGPg0GVrZSN4PRqYxKbRIvgaXChVyuEv66ossQuZ2Cs
	PpJWFimst8mzOGDSPcKbc3z0/9duCQ6gpTnk00lzwAPEUA49iwUxlF9i8eL9a1uTwSZ+wSA83l2se
	6AzOEVSlkkWILOKoJ5lX3Hh7Uv1iwsctHBuuULMSKAwwQe6mIPLt9R/f45Etx+4cWhCSAObXukjbD
	WGqmgBMjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6rK-0000EW-Aq; Fri, 09 Aug 2019 15:31:14 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6rD-0000Dr-E0
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 15:31:08 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 1437E137564;
 Fri,  9 Aug 2019 08:31:06 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 1437E137564
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1565364666;
 bh=32PGDqrz9t1Jsmg/9HOe+K03MbgImQxipAH7w+P7tlQ=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=KGLAFsw9yUqLKHNJoCOsi9s5wU40iYXE1N2Rbnbv7fdJDKA4/Ogxg95E1Zv23YFGX
 FgfjlTXeF0eKbPUvqZWNWTGQp326Xul2G3AEDLV9iwehvSZX3yGy70Gr8PQTB3HJSr
 doKUHrmLJkk9hnjeNPTG+3N7Pb6GyXklXAYCqEnQ=
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
 <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
 <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
 <4ca7aa93-1960-1373-7590-1d39c41d8768@candelatech.com>
 <efe239e4-a6dc-1328-d66e-29047290fca1@ncentric.com>
 <f51ea660-d382-7d31-3ecb-f4beddfb997f@candelatech.com>
 <834cede9-27ca-9987-d86e-54335518857b@ncentric.com>
 <44148c8c-2077-1558-83f1-dd59bc483d3f@ncentric.com>
 <9c9445b3-be50-9f2b-5344-9d34ab6bcad4@ncentric.com>
 <5f7fb09e-0113-1cc5-f137-e1ae04ea31d2@candelatech.com>
 <aaf2075a-43bc-d85a-3184-adec7af4226d@ncentric.com>
 <4e49082d-91f6-ce30-cba5-cbb80edebccb@ncentric.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <864bddd8-8fb2-9d9b-80e6-14c838a92262@candelatech.com>
Date: Fri, 9 Aug 2019 08:31:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4e49082d-91f6-ce30-cba5-cbb80edebccb@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_083107_562230_20259160 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gOC85LzE5IDc6MTQgQU0sIEtvZW4gVmFuZGVwdXR0ZSB3cm90ZToKPiAKPiBPbiAwOS4wOC4x
OSAxNTozMSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pgo+PiBPbiAwOS4wOC4xOSAxNDo0OCwg
QmVuIEdyZWVhciB3cm90ZToKPj4+IE9uIDgvNi8xOSAyOjI2IEFNLCBLb2VuIFZhbmRlcHV0dGUg
d3JvdGU6Cj4+Pgo+Pj4+Pj4gSGkgQmVuLAo+Pj4+Pj4KPj4+Pj4+IEkgZmluYWxseSBtYW5hZ2Vk
IHRvIGdldCB0byBzb21lIHRpbWUgdG8gcHJvcGVybHkgdGFrZSBhIGxvb2sgdXNpbmcgYSBzaW1w
bGUgc2V0dXAuCj4+Pj4+Pgo+Pj4+Pj4gQXR0YWNoZWQgYWxsIHJlcXVpcmVkIGZpbGVzIHRvIHNp
bXVsYXRlIHRoZSBpc3N1ZS4KPj4+Pj4+Cj4+Pj4+PiBJIGNvbXBpbGVkIHRoZSBsYXRlc3QgT3Bl
bldydCBtYXN0ZXIgc3RhdGUsIChpbmNsdWRlZCBhIGZ1bGwgd3BhX3N1cHBsaWNhbnQgYW5kIGlw
ZXJmIHRvb2xzKSBhbmQgcmFuIHRoZSAyIHN0YXJ0cy4KPj4+Pj4+Cj4+Pj4+PiBBdHRhY2hlZCBh
bHNvIGxvZ3MgYXMgc2VlbiBmcm9tIGJvdGggYm9hcmRzIHNpbXVsdGFuZW91c2x5Lgo+Pj4+Pj4K
Pj4+Pj4+Cj4+Pj4+PiBiYXNpY2FsbHk6Cj4+Pj4+Pgo+Pj4+Pj4gLSBJZiB0aGUgYm9hcmRzIGZp
bmFsbHkgZG8gbGluayBhZnRlciBsb3RzIG9mIHRyaWVzLCBpdCB3aWxsIGhhdmUgYSA+MjAwbXMg
bGF0ZW5jeSBhbmQgbWF4IHNwZWVkIG9mIGFib3V0IDNNYml0Lgo+Pj4+Pj4KPj4+Pj4+IC0gVGhl
IHdwYV9zdXAgY29uZmlnIGZpbGUgaXMgdGhlIG1vc3QgYmFzaWMgUlNOIGVuYWJsZWQgY29uZmln
Lgo+Pj4+Pj4KPj4+Pj4+IC0gSSBhbHNvIHRyaWVkIHRoZSBjdXJyZW50IE1hc3RlciBzdGF0ZSB3
aXRoL3dpdGhvdXQgYWxsIGN1c3RvbSBwYXRoZXMsIGJ1dCB0aGUgcmVzdWx0IGlzIHRoZSBzYW1l
Lgo+Pj4+Pj4KPj4+Pj4+IC0gd3BhX3N1cHAgYWxzbyBuYWdzIGFib3V0IHNvbWUgbWlzc2luZyBJ
RSdzCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEh3IHVzZWQ6Cj4+Pj4+Pgo+Pj4+Pj4gLSAyeCBSQi05
MjJVQUdTIGNvbnRhaW5pbmcgYSBvbi1ib2FyZCBhcjk4OHgsIGNhcGFibGUgb2YgMzBkQm0uCj4+
Pj4+Pgo+Pj4+Pj4gLSAyeCBzdGFuZGFyZCA1R0h6IG9tbmkgYW50ZW5uYWUKPj4+Pj4+Cj4+Pj4+
PiAtIGJvYXJkIHNlcGVyYXRpb24gZGlzdGFuY2UgY2EgNmZ0Cj4+Pgo+Pj4gQ2FuIHlvdSByZXBy
b2R1Y2Ugd2l0aG91dCBlbmNyeXB0aW9uIGVuYWJsZWQ/wqAgVGhhdCBtYWtlcyBpdCBlYXNpZXIg
dG8gZGVidWcKPj4+IHBhY2tldCBzbmlmZnMuCj4+Pgo+Pj4gSWYgeW91IGp1c3QgcnVuIHBpbmcg
dHJhZmZpYyAob3IgdmVyeSBzbG93IHNwZWVkIHRjcC91ZHApLCBkbyB5b3Ugc3RpbGwgc2VlIHRo
ZSBpc3N1ZXMgKGxpa2UgaGlnaAo+Pj4gbGF0ZW5jeSwgcGFja2V0IGxvc3MsIHBvb3Igb24tYWly
IGVuY29kaW5nIHJhdGVzLCBldGMpPwo+Pj4KPj4gY3VycmVudGx5IHJlYnVpbGRpbmcgdGhlIHNl
dHVwLiB3aWxsIGdldCBiYWNrIG9uIHRoaXMgYXNhcC4KPj4+IElmIEkgYnVpbGQgeW91IGEgZGVi
dWdnaW5nIGZpcm13YXJlLCBhcmUgeW91IGFibGUgYW5kIHdpbGxpbmcgdG8gcmVwcm9kdWNlIHRo
ZSBwcm9ibGVtIGFuZAo+Pj4gc2VuZCBtZSBkbWVzZyBvdXRwdXQgYXMgd2VsbCBhcyBvbi1haXIg
cGFja2V0IHNuaWZmPwo+PiBWZXJ5IHN1cmUhCj4+Pgo+Pj4gUHJlZmVyYWJseSwgd2l0aCBnZW5l
cmF0ZWQgdHJhZmZpYyB3aXRoIHVuaXF1ZSBwYWNrZXQgc2l6ZXMgKGllLCBldmVyIGluY3JlYXNp
bmcsIHJhbmRvbSwgb3Igc29tZXRoaW5nIGxpa2UKPj4+IHRoYXQsIHNvIEkgY2FuIG1vcmUgZWFz
aWx5IG1hdGNoIHVwIG9uLWFpciBmcmFtZXMgd2l0aCB0aGUgZGVidWdnaW5nIG91dHB1dC4KPj4+
Cj4+Pgo+Pj4gSSBiZWxpZXZlIHRoYXQgdGhlIGJlYWNvbiBpc3N1ZXMgYXJlIHByb2JhYmx5IGEg
c3ltcHRvbSBvZiBzb21lIG90aGVyIGZhaWx1cmUgaW4gdGhlIHRyYW5zbWl0IGFuZC9vcgo+Pj4g
cmVjZWl2ZSBwYXRoLgo+Pj4KPj4+IFRoYW5rcywKPj4+IEJlbgo+Pj4KPj4gTGV0cyBnZXQgdGhp
cyBmaXhlZCEgOi0pCj4+Cj4+IEtvZW4KPj4KPiAKPiBKdXN0IHRlc3RlZCB3aXRoIGVuY3J5cHRp
b24gZGlzYWJsZWQ6Cj4gCj4gc3VtbWFyeToKPiAKPiAtIHNwZWVkIGlzIGxvb2tpbmcgZ29vZC4g
KH4xMzBNYml0L3MpIGFsc28gbGluayBzcGVlZCBpcyA4NjZNYml0ICgyeDIgcmFkaW8pCj4gCj4g
LSBpdyB3bGFuMCBjb25maXJtcyA4ME1IeiBjaGFubmVsCj4gCj4gLSBPbmx5IGEgc2luZ2xlIHNw
bGF0IHNlZW4sIG5vIGJlYWNvbiBlcnJvcnMKPiAKPiAtIG5vbi1odHQgZmlybXdhcmUKCgpQbGVh
c2Ugc2VlIHRoaXMgYnVnIEkgb3BlbmVkIHRvIHRyYWNrIHRoaXMuICBJdCBoYXMgYSBmaXJtd2Fy
ZSBkZWJ1Z2dpbmcgaW1hZ2UuCkluIGNhc2UgaXQgY3Jhc2hlcyBvbiBGVyBsb2FkLCB3ZSB3aWxs
IGhhdmUgdG8gY3JlYXRlIGFuZCB0d2VhayBhIGZ3Y2ZnIGZpbGUKdG8gZGVjcmVhc2UgbnVtYmVy
IG9mIHZkZXZzLCBwZWVycywgZXRjIHNpbmNlIHRoZSBkZWJ1Z2dpbmcgY29kZSB1c2VzIGEgbG90
IG9mCmluc3RydWN0aW9uIHNwYWNlLgoKaHR0cHM6Ly9naXRodWIuY29tL2dyZWVhcmIvYXRoMTBr
LWN0L2lzc3Vlcy84OAoKVGhhbmtzLApCZW4KCi0tIApCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRl
bGF0ZWNoLmNvbT4KQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0
ZWNoLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
