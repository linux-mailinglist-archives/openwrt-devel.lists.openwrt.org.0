Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F690BE288
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 18:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=86WmBdMbbrp1IHyCgbP381mj4Yg+Oc1wS65w4lQS6wk=; b=OE/pylUSHGIwnaBKoeVtfTppK
	zVPBufgeIzOhxbTCkkSBnkCQYCyN4Vm5EaImGBHhNzQVXvQ1WcaJlSfbogOh5sDdb7jQ6FzHruWj1
	GNl3EGs3FHEv19aA+bX8nU6nlrC8qtketwVA2I/8N15oQ4u5KqDDJhnr2PzEfub3vX0iB5VGgRoAX
	23cYMuXwGxAOeuLn4Sg9BvTxeh/ZZMB6stWAR4HrToIr05WoJKo03ah9Z/TiY4IGTg1F/zWdMj0r0
	PyCE9xSK9P73X36nwbLfJYdNe+Juiz9muL4/VT/bdla38Um+e6WGz4ge8RMTBUvkRTC5W9fh6G5dl
	Hwva95oIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAEb-0006Q1-Us; Wed, 25 Sep 2019 16:33:46 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAEH-0006Pf-7N
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 16:33:27 +0000
Received: by mail-ed1-x529.google.com with SMTP id r16so3643331edq.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 09:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=rkq7ADjqC1gX/KqljvSMc2unWAi0s6A5x6PK40wluOw=;
 b=PnWFDqiGu1Au440CFSVHZaTE0dAoDc16SFy/jxQDOlCBs9VJ9nsWnAWh1EJji4hfHA
 bTH9YIFKzIS0g2sApZdybgIv2JbzDuxyge8Vf2z1D9qIVixX0VJoVm+ORMOknvMqaEww
 qKqEXSdGJPPMi3LOUyyFcD1j0Eg+5oglSrXJQZSRJ6Z/zsgbIafoXIepEUztwKhgI2VQ
 rIgq/aHggkTP/0R6PPaGVwDhd/l7GbpPHNlLTsvxLFA6EZO4swJp1drP/rEOdHgBmWXI
 lW7eG+MAwNQPJ2UNccYX9FUzybvxtR7rNlQpYuOf62+ZhhaxejMxeKp1bgDmf3xXogoR
 mz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=rkq7ADjqC1gX/KqljvSMc2unWAi0s6A5x6PK40wluOw=;
 b=DzWVLJCj2ZsYSPKvO/U/BhQqWIOa+zCXOprV3BJrcZFlAGp8zIJGjDIZWJpnq3xqZG
 Y3J14uLQNRIQDIN4LOn7GwB8LzepyRutSdUhQoyfuCfZPVj+oM653GbrWU4TDPJh+A8q
 u0b6fj52ifYwDuSirE/LQUmpsYVctEm8xfhJP1dsXcyVj6v83YD+YBzdmBeGxAaYtUQX
 jueuWjPhHw/ABB/jbhTXTpCQjXltALAKZSR6mlgoKqj6v/PDvGjOtdFI2nRiLhSyqwrC
 78hUOG3u1+n5GCG1j9Yt6GSzTRj+k37PqKIjSCxCzPTSLo7Y2Rcu8Qfi4BrdEuZtYsXA
 x9Kw==
X-Gm-Message-State: APjAAAViaQ4FZXDMeIZLpfLo+p2d/1dAc92CsGzGnd0LqabkflfH9GTQ
 QrKTUZDZnJQEC6OxS3sdbER3TdpO2nU=
X-Google-Smtp-Source: APXvYqw8C1sQSiyy9/mQxHzDGrPiElYfB/BNvWX054X1HJiS8/Uc1VcBMuXE6jejUzkF6kcjpLVm3g==
X-Received: by 2002:a50:e613:: with SMTP id y19mr3966311edm.290.1569429202422; 
 Wed, 25 Sep 2019 09:33:22 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id h7sm1093796edn.73.2019.09.25.09.33.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 09:33:21 -0700 (PDT)
To: support@maxnet.al, Ben Greear <greearb@candelatech.com>
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
 <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
 <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
 <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
 <c9f32f30-c40b-81a6-8497-fab4cebb5df1@candelatech.com>
 <E35DD50A54031C50.bd843672-79ee-46bd-9cc5-21e5b7f21227@mail.outlook.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <c9f4eef7-e45a-15c0-35d9-9f747f88dcf6@ncentric.com>
Date: Wed, 25 Sep 2019 18:33:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <E35DD50A54031C50.bd843672-79ee-46bd-9cc5-21e5b7f21227@mail.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_093325_411055_BD338B78 
X-CRM114-Status: GOOD (  34.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] QCA9994 outdoor 13km link
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDI1LjA5LjE5IDE3OjE0LCBzdXBwb3J0QG1heG5ldC5hbCB3cm90ZToKPiBUaGlzIGlzIGxv
bmcgZGlzdGFuY2UsIDVrbSB3aXRoIDQgZGlzaGVzIG9uIGVhY2ggc2lkZS4gVGhleSBhcmUgYWxs
IAo+IHZlcnRpY2FsIGFuZCBhbGwgY2hhaW5zIGhhdmUgc2lnbmFsIHJhbmdlIC02MCB0byAtNjUu
Cj4KPiBJIGRvbid0IGhhdmUgb21uaSBhbnRlbm5hcy4gSXMgdGhlcmUgYSBwcm9ibGVtIHRoYXQg
aSBhbSB1c2luZyBkaXNoZXM/Cj4KPgpJIHJ1biBkb3plbnMgb2YgbG9uZy1yYW5nZSBkZXZpY2Vz
LCBhbmQgSSdtIHNlZWluZyAyIGlzc3VlcyBpbiB5b3VyIHNldHVwOgoKMSkKCi0gQWNrLXRvIGlz
c3VlcyBraWNrIGluIHN0YXJ0aW5nIGZyb20gcm91Z2hseSAxMDAwbS7CoCBXaGVuIHlvdSBjYW5u
b3QgCmFsdGVyIGFja190byAoY292ZXJhZ2UgY2xhc3MpLCB5b3Ugd2lsbCBub3RpY2Ugc2V2ZXJl
IHBlcmZvcm1hbmNlIGlzc3VlcyAKYWJvdmUgMTAwMG0KCjIpCgotIFVzaW5nIGlkZW50aWNhbCBw
b2xhcml6YXRpb24gb24gYWxsIGNoYWlucyBpcyBhbiBhYnNvbHV0ZSBwZXJmb3JtYW5jZSAKa2ls
bGVyLgoKSSBoYXZlIDIgZGV2aWNlcyzCoCBib3RoIDJ4MiA4MDIuMTFuLCBIVDQwIFNHSSwgd2hp
Y2ggYXJlIG9ubHkgMTUwbSAKYXBhcnQsIGFsbCBjaGFpbnMgViBwb2xhcml6ZWQuCgpXaGVuIHJ1
bm5pbmcgc3BlZWR0ZXN0cywgaW5zcGVjdGluZyBhdGg5ayByYXRlIGNvbnRyb2wgc2hvd3MgaXQg
aXMgc3R1Y2sgCmF0IHRoZSBtYXggc3BlZWQgZm9yIDEgY2hhaW4gKGlzbyAyKQoKSW4gbXkgY2Fz
ZSBpdCBtZWFucyB0aGUgYWJzb2x1dGUgbGluayByYXRlIGlzIDEzME1iaXQgaXNvIDI3MCBpbiB0
aGlzIApjb25maWd1cmF0aW9uLgoKSSBjYW4gaW1hZ2luZSB1c2luZyA0IGNoYWlucyB3aWxsIGV2
ZW4gcmVkdWNlIHBlcmZvcm1hbmNlIGEgbG90IG1vcmUuCgpZb3Ugc2hvdWxkIHJlYWxseSB0cnkg
dG8gdXNlIHVzZSBIICsgVisgKC00NSkgKyAoKzQ1KS4KCkFsc28sIGVuc3VyZSByYWRpbydzIGF0
IGJvdGggc2lkZXMgaGF2ZSB0aGUgY2hhaW5zIG9uIGlkZW50aWNhbCAKcG9sYXJpemF0aW9uLiAo
Q2hhaW4wIC0gVizCoCBDaGFpbjEgLSBILCAuLikKCgpSZWdhcmRzLAoKS29lbgoKPgo+IE9uIFdl
ZCwgU2VwIDI1LCAyMDE5IGF0IDU6MTEgUE0gKzAyMDAsICJCZW4gR3JlZWFyIiAKPiA8Z3JlZWFy
YkBjYW5kZWxhdGVjaC5jb20gPG1haWx0bzpncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4+IHdyb3Rl
Ogo+Cj4gICAgIElzIHRoaXMgc2hvcnQgZGlzdGFuY2Ugb3IgbG9uZz8KPgo+ICAgICBQbGVhc2Ug
dHJ5IHNob3J0IGRpc3RhbmNlIHdpdGggb21uaSBhbnRlbm5hIGZpcnN0IHRvIG1ha2Ugc3VyZSB5
b3UgYXJlIG5vdCBoaXR0aW5nIHRoZSBkZWxheWVkLWFjayBpc3N1ZQo+ICAgICBvciBwcm9ibGVt
cyB3aXRoIHlvdXIgYW50ZW5uYS4KPgo+ICAgICBDaGFuZ2UgeW91ciBhbnRlbm5hIG9yaWVudGF0
aW9uIHNvIHRoYXQgdGhleSBwb2ludCBpbiBkaWZmZXJlbnQgZGlyZWN0aW9ucy4KPgo+ICAgICBU
aGFua3MsCj4gICAgIEJlbgo+Cj4gICAgIE9uIDkvMjUvMTkgNjo0OSBBTSwgc3VwcG9ydEBtYXhu
ZXQuYWwgd3JvdGU6Cj4gICAgID4gSGVsbG8sCj4gICAgID4gCj4gICAgID4gVG9kYXkgaSBtYW5h
Z2VkIHRvIGNvbm5lY3QgdGhlIHN0YXRpb24gd2RzIGF0IDgwTUh6IGNoYW5uZWwuIFNpZ25hbCBp
cyAtNTYgYW5kIGkgaGF2ZSB2ZXJ5IGxvdyBkYXRhcmF0ZXMuIEkgaGF2ZSBhdHRhY2hlZCBhIHBo
b3RvLgo+ICAgICA+IAo+ICAgICA+ICDCoFdoZW4gc3RhdGlvbiB3YXMgZGR3cnQgYW5kIEFQIG9w
ZW53cnQgdGhlIGRhdGFyYXRlcyB3ZXJlIDg2Ni80MzMuIFRYIHdvbid0IGRvIG1vcmUgdGhhbiBW
SFQtTlNTIDEgYWx0aG91Z2ggUlggaXQncyBub3QgZ29vZCBlaXRoZXIgYmVjYXVzZSBpdCdzIGEg
NCBjaGFpbiAKPiAgICAgPiByYWRpbyBhbmQgaXQgc2hvdWxkIGRvIFZIVC1OU1M0Lgo+ICAgICA+
IAo+ICAgICA+IFRoYW5rIHlvdSwKPiAgICAgPiBLbGV2aXMKPiAgICAgPiAKPiAgICAgPiAKPiAg
ICAgPiAKPiAgICAgPiAKPiAgICAgPiBPbiBNb24sIFNlcCAyMywgMjAxOSBhdCA2OjM2IFBNICsw
MjAwLCAiQmVuIEdyZWVhciIgPiB3cm90ZTogPiA+IFdlZWtzIG9yIG1vbnRocyBvciB3aGVuZXZl
ciBJIGhhdmUgdGltZSwgYW5kIG1heWJlCj4gICAgIHNvb25lciBpZiBzb21lb25lID4gd2FudHMg
dG8gc3BvbnNvciBpdC4gUGxlYXNlIHVuZGVyc3RhbmQgSSwgYW5kCj4gICAgIHByb2JhYmx5IGV2
ZXJ5b25lIGVsc2Ugd29ya2luZyA+IG9uIE9wZW5XUlQsIGFtIGJ1c3kgd2l0aCBsb3RzIG9mCj4g
ICAgIG90aGVyIHByb2plY3RzIGFuZCBjb21tdW5pdHkgd29yayBvZnRlbiA+IGdldHMgcHVzaGVk
IHRvIHRoZSBiYWNrCj4gICAgIGJ1cm5lci4gPiA+IFRoYW5rcywgPiBCZW4gPiA+IE9uIDkvMjMv
MTkgODoxOCBBTSwKPiAgICAgc3VwcG9ydEBtYXhuZXQuYWwgd3JvdGU6ID4gPiBIaSBCZW4sID4g
PiA+ID4gV2hlbiBkbyB5b3UgdGhpbmsgeW91Cj4gICAgIG1pZ2h0IGJlIGFibGUgdG8gbWFrZSB0
aG9zZSBjaGFuZ2VzIHRvIHlvdXIgZHJpdmVyPyA+ID4gPiA+Cj4gICAgIFRoYW5rcywgPiA+IEts
ZXZpcy4gPiA+ID4gPiA+ID4gPiA+IE9uIDIwMTktMDktMjAgMTM6MDAsIEJlbgo+ICAgICBHcmVl
YXIgd3JvdGU6ID4gPj4gT24gOS8yMC8xOSAxMjo1NSBQTSwgVmluY2VudCBXaWVtYW5uIHdyb3Rl
OiA+Cj4gICAgID4+PiBIaSBLbGV2aXMsID4gPj4+ID4gPj4+IGhhdmUgeW91IHRyaWVkIGl0IHdp
dGggYSBzaG9ydAo+ICAgICBkaXN0YW5jZT8gPiA+Pj4gSWYgeW91IGRpZCB5b3Ugc2hvdWxkIGJl
dHRlciBhc2sgQmVuIEdyZWVhcgo+ICAgICBkaXJlY3RseS4gPiA+PiA+ID4+IEkgYXNrZWQgaGlt
IHRvIHBvc3QgcHVibGljbHkgc28gdGhhdCBvdGhlcnMKPiAgICAgY2FuIGhlbHAgYW5zd2VyIGFu
ZCB0aGF0ID4gPj4gbXkgb3duIGFuc3dlcnMgbWlnaHQgPiA+PiBoZWxwCj4gICAgIHNvbWVvbmUg
ZWxzZS4gPiA+PiA+ID4+IEkgaGF2ZSBzb21lIHBhdGNoZXMgdGhhdCBzaG91bGQgZW5hYmxlCj4g
ICAgIGNvdmVyYWdlIGNsYXNzIHNldHRpbmdzIGZvciA+ID4+IHdhdmUtMiwgYnV0IEkgYW0gdG9v
IGJ1c3kgPiA+Pgo+ICAgICB3aXRoIG90aGVyIHRoaW5ncyByaWdodCBub3cgdG8gcG9ydCB0aGVt
IHRvIG15IGF0aDEway1jdAo+ICAgICBkcml2ZXIvZmlybXdhcmUuID4gPj4gPiA+PiBUaGFua3Ms
ID4gPj4gQmVuID4gPj4gPiA+Pj4gPiA+Pj4gQnkKPiAgICAgdGhlIHdheSBhdGgxMGsgZ2VuIDIg
Y2hpcHNldHMgZG9uJ3Qgd29yayB2ZXJ5IHdlbGwgd2l0aCBsb25nCj4gICAgIGRpc3RhbmNlIGxp
bmtzIHdpdGhvdXQgYSA+ID4+PiBzcGVjaWFsIGZlYXR1cmUgd2hpY2gKPiAgICAgaW1wbGVtZW50
YXRpb24gaXMgb25seSBhdmFpbGFibGUgdG8gY29tcGFuaWVzIGxpa2UgVWJpcXVpdGkgYW5kCj4g
ICAgIHZlcnkgZmV3ID4gPj4+IHBlb3BsZSB3aG8gaGF2ZSBhbiBvd24gcmV2ZXJzZS1lbmdpbmVl
cmVkCj4gICAgIGltcGxlbWVudGF0aW9uLiA+ID4+PiBJdCB3b3JrcyBvbiBJUFE0MDFYLCBRQ0E5
ODg2IGFuZCBRQ0E5ODg4Cj4gICAgIGJhc2VkIGNoaXBzIG9ubHkuID4gPj4+ID4gPj4+IEFuZCBp
dCBpcyBub3QgcG9zc2libGUgdG8gc2V0IGEKPiAgICAgY292ZXJhZ2UgY2xhc3MgZm9yIGdlbiAy
IGRldmljZXMsIHlldCBhcyBmYXIgYXMgSSBrbm93IGR1ZSB0bwo+ICAgICBtaXNzaW5nID4gPj4+
IGRvY3VtZW50YXRpb24gYW5kIGltcGxlbWVudGF0aW9uIChjb3JyZWN0IG1lIGlmIHRoYXQKPiAg
ICAgaW5mb3JtYXRpb24gaXMgb3V0ZGF0ZWQpLiA+ID4+PiBGdXJ0aGVybW9yZSBhIGhpZ2ggY2hh
bm5lbCB3aWR0aAo+ICAgICBvZnRlbiByZXN1bHRzIGluIHByb2JsZW1zID4gPj4+IGR1ZSB0byBs
b3dlciByZWNlaXZlciBzZW5zaWJpbGl0eS4KPiAgICAgPiA+Pj4gV2UgaGF2ZSBiZXR0ZXIgZXhw
ZXJpZW5jZXMgd2l0aCBsb3dlciBjaGFubmVsIHdpZHRocyBhbmQKPiAgICAgc29tZXRpbWVzIGdl
dCBtb3JlIHRocm91Z2hwdXQgd2l0aCB0aGF0LiA+ID4+PiA+ID4+PiBBY3R1YWxseSBJCj4gICAg
IHRoaW5rIHRoaXMgZG9lcyBub3QgZXhwbGFpbiB5b3VyIGNvbm5lY3Rpb24gaXNzdWVzIGFzIDEz
IGttIGlzIG5vdAo+ICAgICB0aGF0IG11Y2guID4gPj4+ID4gPj4+IFJlZ2FyZHMsID4gPj4+ID4g
Pj4+IFZpbmNlbnQgV2llbWFubiA+ID4+Pgo+ICAgICA+ID4+PiBPbiAyMC4wOS4xOSAxODozMCwg
c3VwcG9ydEBtYXhuZXQuYWwgd3JvdGU6ID4gPj4+PiBIZWxsbwo+ICAgICBldmVyeW9uZSwgPiA+
Pj4+ID4gPj4+PiBJIGFtIHRyeWluZyB0byBzZXR1cCBhIGN1c3RvbSBtYWRlIG91dGRvb3IKPiAg
ICAgbGluayB3aXRoIEFwdTJkMiBib2FyZCBkZXZpY2VzIGFuZCBRQ0E5OTk0IGNhcmRzIGZyb20g
Y29tcGV4Lgo+ICAgICBBZnRlciBpIGluc3RhbGxlZCBvcGVud3J0IGFuZCBhdGgxMGsgY3QgZHJp
dmVyLCA+ID4+Pj4ga21vZCBhdGgxMGsKPiAgICAgYW5kIGJvYXJkLTIuYmluIHRoZSBkZXZpY2Ug
Y2FuIHJ1biBhIDgwTUh6IGNoYW5uZWwgaW4gV0RTIEFQLiBUaGUKPiAgICAgcHJvYmxlbSBpcyB0
aGF0IGl0IHdvbid0IHJ1biBhcyBzdGF0aW9uIG9yIHN0YXRpb24gd2RzLiBJdCBjYW4KPiAgICAg
c2NhbiA+ID4+Pj4gdGhlIFNTSURzIGJ1dCB3b24ndCBjb25uZWN0IHRoZW0uID4gPj4+PiA+ID4+
Pj4gQW55Cj4gICAgIHN1Z2dlc3Rpb24/ID4gPj4+PiA+ID4+Pj4gVGhhbmsgeW91ISA+ID4+Pj4g
S2xldmlzID4gPj4+PiA+ID4+PiA+Cj4gICAgID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXyA+ID4+Pgo+ICAgICBvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdCA+ID4+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnID4KPiAgICAgPj4+IGh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsID4g
Pj4+Cj4gICAgID4gPiA+ID4gPiAtLSA+IEJlbiBHcmVlYXJDYW5kZWxhIFRlY2hub2xvZ2llcyBJ
bmMKPiAgICAgaHR0cDovL3d3dy5jYW5kZWxhdGVjaC5jb20gPiAtLSBCZW4gR3JlZWFyIENhbmRl
bGEgVGVjaG5vbG9naWVzCj4gICAgIEluYyBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbQo+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+
IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
