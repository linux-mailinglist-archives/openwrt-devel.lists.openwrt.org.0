Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CFE146651
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 12:09:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGA6G4Vns6OryUgWoTja9ipT/0wSm5sra6BZfaH832A=; b=t2mCdKyUA66PoK
	X9r/14kRde8ncOn5GByBgFIqyj80ScrqBZdp9mjxplGtVQnq0/mVMJtnPxfuxLVh79YLsmx49G29H
	WA9dbvx1sEzywXWeoo1yEv/DDJ4xCXj9Z5mQwq6VXvTUHOyWqzhY1Dp5eCoogfB/m5cw+zX7PgMJe
	VroTDLZaHfimvxP2i7QyBQZ5A4ITkkyWBK9XG5gQthaExP9mhcmbICr2me3vQKVUq6oi0zxr9aJNo
	5CQE01yjXEtc6U9s1tJsH+jiMxv51ZRdI2mGqdYdDsPQSwmt2teJvsKp2mp0cTxFXzSuVZhfqrrmT
	9kbqUvzJmH/Pd9xGVyyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaM8-0003NX-1e; Thu, 23 Jan 2020 11:09:00 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaLw-0003Mp-CE
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 11:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YbxJ880KGZX7VSRQCrfbSu86wC75/FzyIuqtLX81BzE=; b=e0bzTZdALYl79LALqd4kPs+QjO
 XiraHjnJeiAlHM1gM+MHVWp/4My/Jw+kBJQkNuZyDE/FZ9tgO768hCkmsmvQykDyrRkPuU8ec0A4Q
 fC6hbPcr51xbQK3NSYDo7CQJ35jA40xAw6/sG8M/4rpfY4feheHFCMPxjspVFXN45GVClwXBPZ/5n
 tBL+9pGrjzWT2BQONnpThQq+5MiIEC5rL0zPeer9Jjt6TaZp9nm2A5II4ajltBfzwiBFICrzSEU2d
 ksrMWcT5feaaJKTRQYX6pVM1+862s9mZ49fDN38LysqBw8Nu5yvqqn/auGOCU2U4YiqGjUGUf8qDG
 Ci7r+sQw==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:63088
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1iuaLt-000JKR-V6; Thu, 23 Jan 2020 12:08:45 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20200122094335.GD1406@makrotopia.org>
Date: Thu, 23 Jan 2020 12:08:28 +0100
Message-Id: <F2BB7BDC-243E-41E2-A64F-DA232F5BFECC@oranjevos.nl>
References: <20200121181933.GA34748@makrotopia.org>
 <87blqwirf9.fsf@miraculix.mork.no> <20200121192200.GB34748@makrotopia.org>
 <a65b54c4-8d6a-25f4-0d0c-96c9f3fc93ae@kresin.me>
 <20200122043406.GA1406@makrotopia.org> <20200122094335.GD1406@makrotopia.org>
To: Daniel Golle <daniel@makrotopia.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_030848_706074_0B6B59C0 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] hostapd and Linux bridges
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
Cc: openwrt-devel@lists.openwrt.org,
 =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T3AgMjIgamFuLiAyMDIwLCBvbSAxMDo0MyBoZWVmdCBEYW5pZWwgR29sbGUgPGRhbmllbEBtYWty
b3RvcGlhLm9yZz4gaGV0IHZvbGdlbmRlIGdlc2NocmV2ZW46Cj4gCj4gT24gV2VkLCBKYW4gMjIs
IDIwMjAgYXQgMDY6MzQ6MDZBTSArMDIwMCwgRGFuaWVsIEdvbGxlIHdyb3RlOgo+PiBPbiBUdWUs
IEphbiAyMSwgMjAyMCBhdCAxMTozNDoyMlBNICswMTAwLCBNYXRoaWFzIEtyZXNpbiB3cm90ZToK
Pj4+IDIxLzAxLzIwMjAgMjA6MjIsIERhbmllbCBHb2xsZToKPj4+PiBPbiBUdWUsIEphbiAyMSwg
MjAyMCBhdCAwNzo0MDo0MlBNICswMTAwLCBCasO4cm4gTW9yayB3cm90ZToKPj4+Pj4gRGFuaWVs
IEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+IHdyaXRlczoKPj4+Pj4gCj4+Pj4+PiBPbiBw
cm9wcmlldGFyeSBBUHMgaXQgbG9va3MgbGlrZSBwb3J0IGlzb2xhdGlvbiBpcyBlbmFibGVkIG9y
IGRpc2FibGVkCj4+Pj4+PiBnbG9iYWxseSBpbiBMaW51eCcgYnJpZGdlIGNvZGUgdXNpbmcgc3lz
Y3RsIG9yIG90aGVyIG1ldGhvZHMsIGFuCj4+Pj4+PiBhcHByb2FjaCB3aGljaCBpcyB1bmxpa2Vs
eSB0byBnZXQgYWNjZXB0ZWQgaW50byB0aGUgS2VybmVsLCBhbHNvIGdpdmVuCj4+Pj4+PiB0aGF0
IHRoZSBuZXRsaW5rIGludGVyZmFjZSBhbHJlYWR5IGV4aXN0cyBhbmQgYWxsb3dzIGRvaW5nIHRo
ZSBzYW1lCj4+Pj4+PiB0aGluZyBpbiBhIG1vcmUgZ3JhbnVsYXIgZmFzaGlvbi4KPj4+Pj4gCj4+
Pj4+IEh1aD8KPj4+Pj4gCj4+Pj4+IFdvbid0IHRoaXMgc3lzZnMgYXR0cmlidXRlIHNldCB0aGUg
c2FtZSBmbGFnIElGTEFfQlJQT1JUX0lTT0xBVEVEIHNldHM/Cj4+Pj4+IAo+Pj4+PiAKPj4+Pj4g
cm9vdEB3cnQxOTAwYWMtMTp+IyBncmVwIC4gL3N5cy9jbGFzcy9uZXQvYnItbGFuL2JyaWYvKi9p
c29sYXRlZAo+Pj4+PiAvc3lzL2NsYXNzL25ldC9ici1sYW4vYnJpZi9ldGgwLjcvaXNvbGF0ZWQ6
MAo+Pj4+PiAvc3lzL2NsYXNzL25ldC9ici1sYW4vYnJpZi93bGFuMC9pc29sYXRlZDowCj4+Pj4+
IC9zeXMvY2xhc3MvbmV0L2JyLWxhbi9icmlmL3dsYW4xL2lzb2xhdGVkOjAKPj4+PiAKPj4+PiBM
b29rcyBsaWtlIHRoYXQncyB0aGUgdGhpbmcgSSBtYXkgaGF2ZSBtaXNzZWQgOykKPj4+PiBZZXQg
d2UgZG8gbmVlZCBhIHdheSB0byBzZXQgdGhpcyB0byAnMScgb25jZSBob3N0YXBkIGFkZHMgdGhl
IEFQCj4+Pj4gaW50ZXJmYWNlIHRvIHRoZSBicmlkZ2UuIEknbSBub3Qgc3VyZSB3aGV0aGVyIHNl
dHRpbmcgdGhpcyB2aWEKPj4+PiBzeXNmcyBpcyBhY3R1YWxseSBtb3JlIHNpbXBsZSB0aGFuIHVz
aW5nIG5ldGxpbmsgZ2l2ZW4gdGhhdCBzb21lCj4+Pj4gZ2VuZXJhbCBwdXJwb3NlIG5ldGxpbmsg
Y29kZSBpcyBhbHJlYWR5IHBhcnQgb2YgaG9zdGFwLgo+Pj4+IEluIHRoZSBlbmQsIGVpdGhlciBh
cHByb2FjaCB3b3VsZCBiZSBmaW5lIHdpdGggbWUgYW5kIEkgd291bGQKPj4+PiBpbXBsZW1lbnQg
d2hhdGV2ZXIgaXMgbW9yZSBsaWtlbHkgdG8gYmUgbWVyZ2VkIGludG8gaG9zdGFwLmdpdC4KPj4+
IAo+Pj4gbmV0aWZkIGlzIGFibGUgdG8gc2V0IGJyaWRnZSBjbGllbnQgaXNvbGF0aW9uIHZpYSBz
eXNmcyBzaW5jZSBjb21taXQKPj4+IGMwNmY4NDIzODk1MjIxMWIzNWMyOTQwYTgyZmNjZTNmY2Mz
MjIxYzEuCj4+PiAKPj4+IC9ldGMvY29uZmlnL3dpcmVsZXNzIGFzIGV4cGVjdGVkOgo+Pj4gCj4+
PiBjb25maWcgd2lmaS1pZmFjZQo+Pj4gCW9wdGlvbiBkZXZpY2UgJ3JhZGlvMScKPj4+IAlvcHRp
b24gaWZuYW1lICd3bGFuX2d1ZXN0X2xlZycKPj4+IAlvcHRpb24gbmV0d29yayAnZ3Vlc3QnCj4+
PiAJb3B0aW9uIGlzb2xhdGUgJzEnCj4+PiAKPj4+IGNvbmZpZyB3aWZpLWlmYWNlCj4+PiAJb3B0
aW9uIGRldmljZSAncmFkaW8wJwo+Pj4gCW9wdGlvbiBpZm5hbWUgJ3dsYW5fZ3Vlc3QnCj4+PiAJ
b3B0aW9uIG5ldHdvcmsgJ2d1ZXN0Jwo+Pj4gCW9wdGlvbiBpc29sYXRlICcxCj4+PiAKPj4+IFRo
ZSBpc29sYXRpb24gb3B0aW9uIGluIC9ldGMvY29uZmlnL25ldHdvcmsgZG9lcyB0aGUgdHJpY2s6
Cj4+PiAKPj4+IGNvbmZpZyBpbnRlcmZhY2UgJ2d1ZXN0Jwo+Pj4gCW9wdGlvbiB0eXBlICdicmlk
Z2UnCj4+PiAJb3B0aW9uIHByb3RvICdzdGF0aWMnCj4+PiAKPj4+IGNvbmZpZyBkZXZpY2UgJ3ds
YW5fZ3Vlc3QnCj4+PiAJb3B0aW9uIGlzb2xhdGUgJzEnCj4+PiAKPj4+IGNvbmZpZyBkZXZpY2Ug
J3dsYW5fZ3Vlc3RfbGVnJwo+Pj4gCW9wdGlvbiBpc29sYXRlICcxJwo+Pj4gCj4+PiAKPj4+IE9m
IGNvdXJzZSwgYnJpZGdlIGNsaWVudCBpc29sYXRpb24gaXNuJ3QgbGltaXRlZCB0byB3aXJlbGVz
cyBpbnRlcmZhY2UuCj4gCj4gV2hhdCBhYm91dCB3bGFuMC5zdGExIGFuZCBzdWNoIGNyZWF0ZWQg
YnkgQVAtV0RTPyBJcyB0aGVyZSBhIHdheSB0byBjYXRjaAo+IGFsbCBvciBzZXQgYSBicmlkZ2Ut
d2lkZSBkZWZhdWx0PwpZb3UgbWVhbiBlbmFibGluZyBpc29sYXRpb24gYXQgdGhlIGJyaWRnZSB0
aGF0IGFsbCBzdWIgaW50ZXJmYWNlcyBhcmUgYm91bmQgdG8gPwpTbyBzb21ldGhpbmcgbGlrZSB0
byBpc29sYXRlIGFsbCBib3VuZCBpbnRlcmZhY2VzOgoKY29uZmlnIGludGVyZmFjZSAnZ3Vlc3Qn
CiAgICAgICAgb3B0aW9uIHR5cGUgJ2JyaWRnZScKICAgICAgICBvcHRpb24gaXNvbGF0ZSAnMScK
ICAgICAgICBvcHRpb24gaWZuYW1lICdldGgxLjEyNycKICAgICAgICBvcHRpb24gcHJvdG8gJ3N0
YXRpYycKICAgICAgICBvcHRpb24gaXBhZGRyICcxOTIuMTY4LjEyNy4xJwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
