Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F1FBE0EC
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 17:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iswuui4c4C6PX+MCmgXEhdNKjJShYO1xDlRlr3rHWpQ=; b=KtZPe/9Qgqq4l0YQUhXP+XYcW
	kiJ7btrOP/2BFUqpkge6CkKqpUYdWdzjq8chqGLRoWGtVYWVt2yXcdGKgr5kEUrTvcl8B5wHdx2b1
	arcKkCi6Ql9SQVlLJ87PrveFzINIrox8eKVczdiUHBkSpuq8jyB7rBv/jMu1xvTRein4jqIm3opEI
	Qg2mBaEnMfnmH3glYTvndv0q6bZTUNvJW8tq1GYj2viW0yR6esHNRwrRxdWVR7Proi7mZm0mng+Xf
	NWjaidLOt0RAfxG/wLnAT3RNEUgIOh8F7ERxsqHVTOYHlUf+I8I/7dZhqSz3icv6/Y7JHwJnBbuyK
	lJL2Vh3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8wy-0008FV-16; Wed, 25 Sep 2019 15:11:28 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8wm-0008F7-V2
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 15:11:19 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 822DF13C283;
 Wed, 25 Sep 2019 08:11:15 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 822DF13C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1569424275;
 bh=//nE3IoKKYjGx2dLxyaJeusny/Ki96Cy3upDdDbEsPo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=BFPOhB/86HxwmlTedy1Xp5OR5mVXg8jILjB/UDrJy9CUyvbV4WznKrckVD6nf8whQ
 6tZ2dcp39H3UUPTAD45QjeRVzE0j7c3vTkmWOr14QAqVbO9qj9yN4Byx+QXnl1/OjY
 i2THQn0NBC9IGGMO8+fqelVwYNgAgppnbGHCSnc8=
To: support@maxnet.al
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
 <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
 <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
 <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <c9f32f30-c40b-81a6-8497-fab4cebb5df1@candelatech.com>
Date: Wed, 25 Sep 2019 08:11:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_081117_071308_9E4F8970 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SXMgdGhpcyBzaG9ydCBkaXN0YW5jZSBvciBsb25nPwoKUGxlYXNlIHRyeSBzaG9ydCBkaXN0YW5j
ZSB3aXRoIG9tbmkgYW50ZW5uYSBmaXJzdCB0byBtYWtlIHN1cmUgeW91IGFyZSBub3QgaGl0dGlu
ZyB0aGUgZGVsYXllZC1hY2sgaXNzdWUKb3IgcHJvYmxlbXMgd2l0aCB5b3VyIGFudGVubmEuCgpD
aGFuZ2UgeW91ciBhbnRlbm5hIG9yaWVudGF0aW9uIHNvIHRoYXQgdGhleSBwb2ludCBpbiBkaWZm
ZXJlbnQgZGlyZWN0aW9ucy4KClRoYW5rcywKQmVuCgpPbiA5LzI1LzE5IDY6NDkgQU0sIHN1cHBv
cnRAbWF4bmV0LmFsIHdyb3RlOgo+IEhlbGxvLAo+IAo+IFRvZGF5IGkgbWFuYWdlZCB0byBjb25u
ZWN0IHRoZSBzdGF0aW9uIHdkcyBhdCA4ME1IeiBjaGFubmVsLiBTaWduYWwgaXMgLTU2IGFuZCBp
IGhhdmUgdmVyeSBsb3cgZGF0YXJhdGVzLiBJIGhhdmUgYXR0YWNoZWQgYSBwaG90by4KPiAKPiAg
wqBXaGVuIHN0YXRpb24gd2FzIGRkd3J0IGFuZCBBUCBvcGVud3J0IHRoZSBkYXRhcmF0ZXMgd2Vy
ZSA4NjYvNDMzLiBUWCB3b24ndCBkbyBtb3JlIHRoYW4gVkhULU5TUyAxIGFsdGhvdWdoIFJYIGl0
J3Mgbm90IGdvb2QgZWl0aGVyIGJlY2F1c2UgaXQncyBhIDQgY2hhaW4gCj4gcmFkaW8gYW5kIGl0
IHNob3VsZCBkbyBWSFQtTlNTNC4KPiAKPiBUaGFuayB5b3UsCj4gS2xldmlzCj4gCj4gCj4gCj4g
Cj4gT24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgNjozNiBQTSArMDIwMCwgIkJlbiBHcmVlYXIiIDxn
cmVlYXJiQGNhbmRlbGF0ZWNoLmNvbSA8bWFpbHRvOmdyZWVhcmJAY2FuZGVsYXRlY2guY29tPj4g
d3JvdGU6Cj4gCj4gICAgIFdlZWtzIG9yIG1vbnRocyBvciB3aGVuZXZlciBJIGhhdmUgdGltZSwg
YW5kIG1heWJlIHNvb25lciBpZiBzb21lb25lCj4gICAgIHdhbnRzIHRvIHNwb25zb3IgaXQuICBQ
bGVhc2UgdW5kZXJzdGFuZCBJLCBhbmQgcHJvYmFibHkgZXZlcnlvbmUgZWxzZSB3b3JraW5nCj4g
ICAgIG9uIE9wZW5XUlQsIGFtIGJ1c3kgd2l0aCBsb3RzIG9mIG90aGVyIHByb2plY3RzIGFuZCBj
b21tdW5pdHkgd29yayBvZnRlbgo+ICAgICBnZXRzIHB1c2hlZCB0byB0aGUgYmFjayBidXJuZXIu
Cj4gCj4gICAgIFRoYW5rcywKPiAgICAgQmVuCj4gCj4gICAgIE9uIDkvMjMvMTkgODoxOCBBTSwg
c3VwcG9ydEBtYXhuZXQuYWwgd3JvdGU6Cj4gICAgID4gSGkgQmVuLAo+ICAgICA+IAo+ICAgICA+
IFdoZW4gZG8geW91IHRoaW5rIHlvdSBtaWdodCBiZSBhYmxlIHRvIG1ha2UgdGhvc2UgY2hhbmdl
cyB0byB5b3VyIGRyaXZlcj8KPiAgICAgPiAKPiAgICAgPiBUaGFua3MsCj4gICAgID4gS2xldmlz
Lgo+ICAgICA+IAo+ICAgICA+IAo+ICAgICA+IAo+ICAgICA+IE9uIDIwMTktMDktMjAgMTM6MDAs
IEJlbiBHcmVlYXIgd3JvdGU6Cj4gICAgID4+IE9uIDkvMjAvMTkgMTI6NTUgUE0sIFZpbmNlbnQg
V2llbWFubiB3cm90ZToKPiAgICAgPj4+IEhpIEtsZXZpcywKPiAgICAgPj4+Cj4gICAgID4+PiBo
YXZlIHlvdSB0cmllZCBpdCB3aXRoIGEgc2hvcnQgZGlzdGFuY2U/Cj4gICAgID4+PiBJZiB5b3Ug
ZGlkIHlvdSBzaG91bGQgYmV0dGVyIGFzayBCZW4gR3JlZWFyIGRpcmVjdGx5Lgo+ICAgICA+Pgo+
ICAgICA+PiBJIGFza2VkIGhpbSB0byBwb3N0IHB1YmxpY2x5IHNvIHRoYXQgb3RoZXJzIGNhbiBo
ZWxwIGFuc3dlciBhbmQgdGhhdAo+ICAgICA+PiBteSBvd24gYW5zd2VycyBtaWdodAo+ICAgICA+
PiBoZWxwIHNvbWVvbmUgZWxzZS4KPiAgICAgPj4KPiAgICAgPj4gSSBoYXZlIHNvbWUgcGF0Y2hl
cyB0aGF0IHNob3VsZCBlbmFibGUgY292ZXJhZ2UgY2xhc3Mgc2V0dGluZ3MgZm9yCj4gICAgID4+
IHdhdmUtMiwgYnV0IEkgYW0gdG9vIGJ1c3kKPiAgICAgPj4gd2l0aCBvdGhlciB0aGluZ3Mgcmln
aHQgbm93IHRvIHBvcnQgdGhlbSB0byBteSBhdGgxMGstY3QgZHJpdmVyL2Zpcm13YXJlLgo+ICAg
ICA+Pgo+ICAgICA+PiBUaGFua3MsCj4gICAgID4+IEJlbgo+ICAgICA+Pgo+ICAgICA+Pj4KPiAg
ICAgPj4+IEJ5IHRoZSB3YXkgYXRoMTBrIGdlbiAyIGNoaXBzZXRzIGRvbid0IHdvcmsgdmVyeSB3
ZWxsIHdpdGggbG9uZyBkaXN0YW5jZSBsaW5rcyB3aXRob3V0IGEKPiAgICAgPj4+IHNwZWNpYWwg
ZmVhdHVyZSB3aGljaCBpbXBsZW1lbnRhdGlvbiBpcyBvbmx5IGF2YWlsYWJsZSB0byBjb21wYW5p
ZXMgbGlrZSBVYmlxdWl0aSBhbmQgdmVyeSBmZXcKPiAgICAgPj4+IHBlb3BsZSB3aG8gaGF2ZSBh
biBvd24gcmV2ZXJzZS1lbmdpbmVlcmVkIGltcGxlbWVudGF0aW9uLgo+ICAgICA+Pj4gSXQgd29y
a3Mgb24gSVBRNDAxWCwgUUNBOTg4NiBhbmQgUUNBOTg4OCBiYXNlZCBjaGlwcyBvbmx5Lgo+ICAg
ICA+Pj4KPiAgICAgPj4+IEFuZCBpdCBpcyBub3QgcG9zc2libGUgdG8gc2V0IGEgY292ZXJhZ2Ug
Y2xhc3MgZm9yIGdlbiAyIGRldmljZXMsIHlldCBhcyBmYXIgYXMgSSBrbm93IGR1ZSB0byBtaXNz
aW5nCj4gICAgID4+PiBkb2N1bWVudGF0aW9uIGFuZCBpbXBsZW1lbnRhdGlvbiAoY29ycmVjdCBt
ZSBpZiB0aGF0IGluZm9ybWF0aW9uIGlzIG91dGRhdGVkKS4KPiAgICAgPj4+IEZ1cnRoZXJtb3Jl
IGEgaGlnaCBjaGFubmVsIHdpZHRoIG9mdGVuIHJlc3VsdHMgaW4gcHJvYmxlbXMKPiAgICAgPj4+
IGR1ZSB0byBsb3dlciByZWNlaXZlciBzZW5zaWJpbGl0eS4KPiAgICAgPj4+IFdlIGhhdmUgYmV0
dGVyIGV4cGVyaWVuY2VzIHdpdGggbG93ZXIgY2hhbm5lbCB3aWR0aHMgYW5kIHNvbWV0aW1lcyBn
ZXQgbW9yZSB0aHJvdWdocHV0IHdpdGggdGhhdC4KPiAgICAgPj4+Cj4gICAgID4+PiBBY3R1YWxs
eSBJIHRoaW5rIHRoaXMgZG9lcyBub3QgZXhwbGFpbiB5b3VyIGNvbm5lY3Rpb24gaXNzdWVzIGFz
IDEzIGttIGlzIG5vdCB0aGF0IG11Y2guCj4gICAgID4+Pgo+ICAgICA+Pj4gUmVnYXJkcywKPiAg
ICAgPj4+Cj4gICAgID4+PiBWaW5jZW50IFdpZW1hbm4KPiAgICAgPj4+Cj4gICAgID4+PiBPbiAy
MC4wOS4xOSAxODozMCwgc3VwcG9ydEBtYXhuZXQuYWwgd3JvdGU6Cj4gICAgID4+Pj4gSGVsbG8g
ZXZlcnlvbmUsCj4gICAgID4+Pj4KPiAgICAgPj4+PiBJIGFtIHRyeWluZyB0byBzZXR1cCBhIGN1
c3RvbSBtYWRlIG91dGRvb3IgbGluayB3aXRoIEFwdTJkMiBib2FyZCBkZXZpY2VzIGFuZCBRQ0E5
OTk0IGNhcmRzIGZyb20gY29tcGV4LiBBZnRlciBpIGluc3RhbGxlZCBvcGVud3J0IGFuZCBhdGgx
MGsgY3QgZHJpdmVyLCAKPiAgICAgPj4+PiBrbW9kIGF0aDEwayBhbmQgYm9hcmQtMi5iaW4gdGhl
IGRldmljZSBjYW4gcnVuIGEgODBNSHogY2hhbm5lbCBpbiBXRFMgQVAuIFRoZSBwcm9ibGVtIGlz
IHRoYXQgaXQgd29uJ3QgcnVuIGFzIHN0YXRpb24gb3Igc3RhdGlvbiB3ZHMuIEl0IGNhbiBzY2Fu
Cj4gICAgID4+Pj4gdGhlIFNTSURzIGJ1dCB3b24ndCBjb25uZWN0IHRoZW0uCj4gICAgID4+Pj4K
PiAgICAgPj4+PiBBbnkgc3VnZ2VzdGlvbj8KPiAgICAgPj4+Pgo+ICAgICA+Pj4+IFRoYW5rIHlv
dSEKPiAgICAgPj4+PiBLbGV2aXMKPiAgICAgPj4+Pgo+ICAgICA+Pj4KPiAgICAgPj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gICAgID4+PiBvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+ICAgICA+Pj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+ICAgICA+Pj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwKPiAgICAgPj4+Cj4gICAgID4gCj4gCj4gCj4gICAgIC0tIAo+ICAg
ICBCZW4gR3JlZWFyQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jIGh0dHA6Ly93d3cuY2FuZGVsYXRl
Y2guY29tCj4gCgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpDYW5k
ZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
