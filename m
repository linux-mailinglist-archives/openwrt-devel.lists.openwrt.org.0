Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFC21429D6
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 12:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3TNVLz9eLGsA5wY72rWoIzfbbJghlkiGQt2YIDTk5Ek=; b=gLE5mq2z0XSYoukD/7ixh8Gfl
	HG2MIsbQ89EuOOyIJnaKj2y9mjLLG/8WSFFzXYUQyFg+D1GNv3qbCVdHuSPcL0EvIs7zfzs94J+TR
	JZjiKR/bELoYoGV73E+nCqVB9RMTY7KKZsbqaypzN1VLkd/+EVP+l6VCdcYj2aUl85Yjf5PqcQumr
	e20zgUxA6mwnHrbvUbo8RxLyJvZfdhP12EHq4Aj22gwOo+y//ovyWWkflvtBoHTrnRnvAZco4Tilf
	FoZJMNyrtZIj6Mw1S/LHP0O1TYJA3y+sDKhNpC5gqIAxrGfWtzjLYg0UAR5FBoe2AnNCku/g3t8MP
	QZziqFf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVYz-0004H9-FE; Mon, 20 Jan 2020 11:49:49 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVYh-0004GN-9c
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 11:49:37 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D967240003
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Jan 2020 11:49:15 +0000 (UTC)
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
 <002001d5ca11$ce0e0de0$6a2a29a0$@gmx.de>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <f188c15e-fb2f-6835-0d43-bf56eff70100@aparcar.org>
Date: Mon, 20 Jan 2020 01:49:12 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <002001d5ca11$ce0e0de0$6a2a29a0$@gmx.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_034931_472493_8CE20A4C 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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

SGkgYWxsLAoKSSBsb29rZWQgYSBiaXQgaW50byBwYXJzaW5nIHRoZSBEZXZpY2VUcmVlIGZpbGVz
IGJ1dCBpdCdzIGEgYml0IG9mIGEgCnBhaW4uIFRvb2xzIGxpa2UgZHRzMnlhbWwgYW5kIGR0YyBl
eGlzdHMsIGhvd2V2ZXIgdGhlIG91dHB1dCBpcyBub3QgCnJlYWxseSB1c2VmdWw6IEEgbG90IG9m
IGF1dG8gZGV0ZWN0aW9uIHByZXZlbnRzIHRoZSBwYXJzZXIgZnJvbSBrbm93aW5nIApmbGFzaCAm
IHN0b3JhZ2Ugc2l6ZXMgb3IgbnVtYmVyIG9mIFVTQiBwb3J0cy4KClRoZXJlZm9yZSBJIGRlY2lk
ZWQgdG8gY3JlYXRlIGEgc2ltcGxlIHNoZWxsIHNjcmlwdCB0byBnZXQgYWxsIHJlbGV2YW50IApp
bmZvcm1hdGlvbi4gSSdkIGFkZCBpdCB0byAuL3NjcmlwdHMvLCBtYXliZSB0aGVyZSBpcyBhIHNp
bXBsZSB3YXkgd2l0aCAKTWFrZWZpbGUgaW50ZWdyYXRpb24gYXMgd2VsbCBsaWtlIFBldHIgc3Vn
Z2VzdGVkLgoKTmV4dCBtYWlsIHdpbGwgY29udGFpbiBzb21lIHBhdGNoLgoKSWYgYW55Ym9keSB3
YW50cyB0byBjb250aW51ZSB0aGUgRGV2aWNlVHJlZSBhcHByb2FjaCwgZHRzMnlhbWwgY3JlYXRl
cyAKbGlua3MgcG9pbnRpbmcgdG8gZmlsZXMgb3V0c2lkZSB0aGUgT3BlbldydCBzb3VyY2VzLCBt
ZWFuaW5nIHRoZSBQeXRob24gCllBTUwgbGlicyBmYWlscyB0byByZWFkIGl0IGR1ZSB0byBtaXNz
aW5nIGFuY2hvcnMuIENvbnZlcnRpbmcgZHRiIGZpbGVzIAp2aWEgZHRjIHdvcmtzIGhvd2V2ZXIs
IGp1c3QgYmUgYXdhcmUgdGhhdCB5b3UgaGF2ZSB0byBjb252ZXJ0IGl0IGZyb20gCmR0YiB0byBk
dHMgZmlyc3QgYW5kIGluIGEgc2Vjb25kIHJ1biBmcm9tIGR0cyB0byB5YW1sLiBTaW5nbGUgc3Rl
cCBpcyAKbm90IHN1cHBvcnRlZC4KCkJlc3QsClBhdWwKCk9uIDEvMTMvMjAgMzowMyBBTSwgVGhv
bWFzIEVuZHQgd3JvdGU6Cj4+IC0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0LS0tLS0KPj4g
Vm9uOiBvcGVud3J0LWRldmVsIDxvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5v
cmc+IEltCj4+IEF1ZnRyYWcgdm9uIFBhdWwgU3Bvb3Jlbgo+PiBHZXNlbmRldDogU29ubnRhZywg
MTIuIEphbnVhciAyMDIwIDIyOjQ3Cj4+IEFuOiAnT3BlbldydCBEZXZlbG9wbWVudCBMaXN0JyA8
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZz4KPj4gQmV0cmVmZjogW09wZW5XcnQtRGV2
ZWxdIFtSRkNdIGNvbW1pdCBtZXNzYWdlIGluIFlBTUwgZm9ybWF0IGZvciBuZXcKPj4gZGV2aWNl
cwo+PiBBbiBpbGx1c3RyYXRpdmUgY29tbWl0IHRoZXJlZm9yZToKPj4KPj4gc29jOiBRdWFsY29t
bSBJUFE0MDI5Cj4+IHJhbV9tYjogNTEyCj4+IGZsYXNoOgo+IElmIHRoZXJlIGlzIG1hbnVhbCB1
c2VyIGlucHV0LCB5b3UgbmVlZCB0byB2YWxpZGF0ZSBhbmQgbm9ybWFsaXplIHRoZSBpbnB1dCBk
YXRhLgo+Cj4gRXhhbXBsZToKPgo+IC0gc29jOiBRdWFsY29tbSBJUFE0MDI5Cj4gLSBzb2M6IElQ
UTQwMjkKPiAtIHNvYzogcVVhTGNPbU1tIElQUTQwMjkKPgo+IFdlIHdhbnQgdW5pZm9ybSBuYW1p
bmcgYW5kIHNwZWxsaW5nLgo+Cj4gSWYgYWxsIHRoaXMgaXMgY3JlYXRlZCB2aWEgc2NyaXB0LCBv
aywgbm8gcHJvYmxlbSwgdGhlIHNjcmlwdCBjYW4gaGFuZGxlIHRoYXQuCj4gSWYgeW91IHdhbnQg
dXNlcnMgdG8gZGVsaXZlciBhY2NlcHRhYmxlIHlhbWwgZmlsZXMsIHlvdSBzaG91bGQgY3JlYXRl
IGEgInlhbWwtZ2VuZXJhdG9yIiB3aGVyZSB5b3UgY2FuIGVhc2lseSBjaG9zZSBpbiBkcm9wZG93
biBsaXN0cyB3aGljaCBTb0MsIHdoYXQgUkFNIGNoaXAsIC4uLi4uCj4gVGhlIGN1cnJlbnQgZGF0
YWVudHJpZXMgZG8gYWxyZWFkeSBoYXZlIGRyb3Bkb3ducyBmb3Igc2V2ZXJhbCBmZWF0dXJlcywg
aG93ZXZlciwgU29DICsgV2lyZWxlc3MgaGFyZHdhcmUgYXJlIGZyZWV0ZXh0LCBubyBkcm9wZG93
bnMuIEhhdmluZyB0aGF0IGF1dG9tYXRlZCB3b3VsZCBiZSBhIGdhaW4uCj4KPiBSZWdhcmRzLAo+
Cj4gVGhvbWFzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
