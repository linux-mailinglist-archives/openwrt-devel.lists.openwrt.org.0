Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864011DB478
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 15:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3YKDL4HTalH8TwYbNcTxOLD2xpIdo43Mt+ivOzv/RqQ=; b=oK5Ns8BxOTdD8xYXjO/NQzhmm
	3UW+m0wVrkFtwZvV4E+LC7lf+M12r43JTKLY0IUecJ9J73RkbwZMOeSKsHF6b01gW6MNnZ+NXyazt
	aT3DgwCL78exPOXjR8cNYippGLqUSTvUrEQHEdSBwMjrSVRV1zV5Be9ReWpW12yJIr0fXrBjFt532
	wiIU4YnBA9w3KnEuyaQWWUBTR+2mopwCPtknVo6aQ0MvnVzqPRELWN4SjCJvyyaQVhl1VBzN8Ahpb
	GmUwN+Zu1tZX/MEAl33ev/hDBKU8YLGPaLqtoDLikqm+1lu4W4CpVZ7Ni5p1uKE24Jjo8muv8pjZR
	RV+IGRwOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOLR-0002Dv-3A; Wed, 20 May 2020 13:01:13 +0000
Received: from mail.as201155.net ([185.84.6.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOLI-0002Bc-2e
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 13:01:06 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:38178
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jbOLB-0002Fx-2u; Wed, 20 May 2020 15:00:58 +0200
X-CTCH-RefID: str=0001.0A782F21.5EC529AC.0013, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=WHN059KMMKqt55KiF38hof7CfVor09VP7Rsqx7uRGGc=; 
 b=A7CWcs0iqdeo+EHGaG2mTEZTqIPpTID4+3QXPyItk7Ni6tsJGYqDc7QmTkhUgkOq3gMhr/OtrTu+WLEn2A3R02z9XkKk2ACKy+8PUy1Y4DS4bhg49eGOKelR0urZ2XBKdtWOPruQYjL/8D/S7Mw3EbAloGNWgcT46bByYz8sXTQ=;
To: Vincent Wiemann <vincent.wiemann@ironai.com>,
 Sven Eckelmann <sven@narfation.org>, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Ansuel Smith <ansuelsmth@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <2468724.JaAZLprVu6@bentobox>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
 <90f5adcb-488e-96e2-001e-7bf8d175dec6@ironai.com>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <4df82bd4-cab4-55e2-7885-df86d22aed63@dd-wrt.com>
Date: Wed, 20 May 2020 15:00:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <90f5adcb-488e-96e2-001e-7bf8d175dec6@ironai.com>
X-Received: from [2a01:7700:8040:4000:f846:4861:fc39:f688]
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jbOGw-0002Im-Q8; Wed, 20 May 2020 14:56:37 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_060104_267929_60317DE5 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v13] ath10k: add LED and GPIO
 controlling support for various chipsets
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CkFtIDIwLjA1LjIwMjAgdW0gMTI6NDAgc2NocmllYiBWaW5jZW50IFdpZW1hbm46Cj4gSGkgU2Vi
YXN0aWFuLAo+Cj4gSSBkb24ndCBrbm93IHdoeSBpdCB3YXMgZHJvcHBlZCwgYnV0IEkgY2FuIHNh
eSB0aGF0IHRoZSBMRUQgY29udHJvbCBjb2RlIHdhcyBraW5kIG9mCj4gYW5ub3lpbmcgbWUuIEV2
ZW4gd2hlbiB0aGUgTEVEIHdhcyB0dXJuZWQgb2YsIGl0ICJmbGlja2VyZWQiIHdoZW4gaXQgd2Fz
IHNldCBkaXNhYmxlZC4KPiBVbmZvcnR1bmF0ZWx5IEkgZGlkbid0IGhhdmUgdGltZSB0byBsb29r
IGludG8gaXQsIHlldC4KdGhlIGxlZCBjb2RlIHdpbGwganVzdCBiZSB1c2VkIGlmIHlvdSBzZXQg
YSB0cmlnZ2VyLiBvdGhlcndpc2UgaXQgZG9lc250IAp0b3VjaCB0aGUgZ3Bpb3MuCnRoZSBjb2Rl
IGl0c2VsZiB3YXMgd3JpdHRlbiB0byBtYWtlIHVzZSBvZiB0aGUgbGVkJ3MgYnVpbHRpbiB0byBz
ZXZlcmFsIApyb3V0ZXJzLiBpZiB5b3UgZG9udCBzZXQgYSBsZWQgdHJpZ2dlciwgbm90aGluZyB3
aWxsIGhhcHBlbgoKPiBCZXN0LAo+Cj4gVmluY2VudAo+Cj4gT24gMjAuMDUuMjAgMDk6MzksIFNl
YmFzdGlhbiBHb3R0c2NoYWxsIHdyb3RlOgo+PiB0aGlzIGNvZGUgaXMgbm90IGluIHVzZSBpbiBp
dHMgb3JpZ2luYWwgZm9ybSBmb3IgaXBxNDAxOS4KPj4gaSBoYXZlIHNlZW4gdGhhdCBoaXMgcGF0
Y2ggaXMgYWxzbyBkcm9wcGVkIGZyb20gYXRoLmdpdCBidXQgaXMgc3RpbGwgaW4gdXNlIGJ5IG9w
ZW53cnQuCj4+IGNvdWxkIHNvbW9uZSBjbGFyaWZ5IHRoZSBzdGF0ZSBoZXJlIGFuZCB3aHkgaXQg
d2FzIGRyb3BwZWQ/Cj4+IHRoZSBvcmlnaW5hbCBwYXRjaCBpIHdyb3RlIGRvZXMgZXhjbHVkZSB0
aGUgc29jIGNoaXBzZXRzLCBidXQgdGhlIHBhdGNoIHdhcyBsYXRlciByZW9yZ2FuaXplZCBhbmQg
c29tZSBwYXJ0IGhhdmUgYmVlbiByZXdyaXR0ZW4KPj4gc28gaSdtIG5vdCBzdXJlIGlmIGl0IGNv
dmVycyB0aGUgc2NlbmFyaW8gbWVudGlvbmVkIGhlcmUsIHdoaWNoIGkgZGlkIHRha2UgY2FyZSBv
Zgo+Pgo+PiBTZWJhc3RpYW4KPj4KPj4gQW0gMjYuMDIuMjAxOSB1bSAxMDoxNiBzY2hyaWViIFN2
ZW4gRWNrZWxtYW5uOgo+Pj4gT24gRnJpZGF5LCA2IEFwcmlsIDIwMTggMTc6MTc6NTUgQ0VUIEth
bGxlIFZhbG8gd3JvdGU6Cj4+Pj4gRnJvbTogU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNj
aGFsbEBuZXdtZWRpYS1uZXQuZGU+Cj4+Pj4KPj4+PiBBZGRzIExFRCBhbmQgR1BJTyBDb250cm9s
IHN1cHBvcnQgZm9yIDk4OHgsIDk4ODcsIDk4ODgsIDk5eDAsIDk5ODQgYmFzZWQKPj4+PiBjaGlw
c2V0cyB3aXRoIG9uIGNoaXBzZXQgY29ubmVjdGVkIGxlZCdzIHVzaW5nIFdNSSBGaXJtd2FyZSBB
UEkuwqAgVGhlIExFRAo+Pj4+IGRldmljZSB3aWxsIGdldCBhdmFpbGFibGUgbmFtZWQgYXMgImF0
aDEway1waHlYIiBhdCBzeXNmcyBhbmQgY2FuIGJlIGNvbnRyb2xsZWQKPj4+PiB3aXRoIHZhcmlv
dXMgdHJpZ2dlcnMuwqAgYWRkcyBhbHNvIGRlYnVnZnMgaW50ZXJmYWNlIGZvciBncGlvIGNvbnRy
b2wuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gR290dHNjaGFsbCA8cy5nb3R0
c2NoYWxsQGRkLXdydC5jb20+Cj4+Pj4gUmV2aWV3ZWQtYnk6IFN0ZXZlIGRlUm9zaWVyIDxkZXJv
c2llckBjYWwtc2llcnJhLmNvbT4KPj4+PiBba3ZhbG86IG1ham9yIHJlb3JnIGFuZCBjbGVhbnVw
XQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEthbGxlIFZhbG8gPGt2YWxvQGNvZGVhdXJvcmEub3JnPgo+
Pj4gVGhpcyBwYXRjaCB3YXMgaW1wb3J0ZWQgdG8gT3BlbldydCBpbiBjb21taXQgNjFkNTdhMmY4
OGI5ICgibWFjODAyMTE6IGF0aDEwawo+Pj4gYWRkIGxlZHMgc3VwcG9ydCIpIGFuZCBicm9rZSB0
aGUgMTFzIHN1cHBvcnQgZm9yIElQUTQwMTkgYW5kIFFDQTQwMTkgKDVHSHopCj4+PiBmaXJtd2Fy
ZSB2ZXJzaW9ucyAxMC40LTMuNS4zLTAwMDUzLCAxMC40LTMuNS4zLTAwMDU3LCAxMC40LTMuNi0w
MDE0MDoKPj4+Cj4+PiAgwqDCoMKgwqAgW8KgIDIyMS42MjA4MDNdIGF0aDEwa19wY2kgMDAwMDow
MTowMC4wOiB3bWkgY29tbWFuZCAzNjk2NyB0aW1lb3V0LCByZXN0YXJ0aW5nIGhhcmR3YXJlCj4+
PiAgwqDCoMKgwqAgW8KgIDIyMS43NDQwNTZdIGllZWU4MDIxMSBwaHkwOiBIYXJkd2FyZSByZXN0
YXJ0IHdhcyByZXF1ZXN0ZWQKPj4+ICDCoMKgwqDCoCBbwqAgMjI1LjEzMDgyOV0gYXRoMTBrX3Bj
aSAwMDAwOjAxOjAwLjA6IGZhaWxlZCB0byByZWNlaXZlIGNvbnRyb2wgcmVzcG9uc2UgY29tcGxl
dGlvbiwgcG9sbGluZy4uCj4+PiAgwqDCoMKgwqAgW8KgIDIyNi4xNzA4MjRdIGF0aDEwa19wY2kg
MDAwMDowMTowMC4wOiBTZXJ2aWNlIGNvbm5lY3QgdGltZW91dAo+Pj4gIMKgwqDCoMKgIFvCoCAy
MjYuMTcwODcxXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogZmFpbGVkIHRvIGNvbm5lY3QgaHR0
ICgtMTEwKQo+Pj4gIMKgwqDCoMKgIFvCoCAyMjYuMjUyMjQ4XSBhdGgxMGtfcGNpIDAwMDA6MDE6
MDAuMDogQ291bGQgbm90IGluaXQgY29yZTogLTExMAo+Pj4KPj4+IFRoaXMgd2FzIHRlc3RlZCBv
biBhbiBBNjIgd2l0aCBmb2xsb3dpbmcgd2lyZWxlc3MgY29uZmlnOgo+Pj4KPj4+ICDCoMKgwqDC
oCBjb25maWcgd2lmaS1kZXZpY2UgJ3JhZGlvMCcKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgb3B0aW9uIHR5cGUgJ21hYzgwMjExJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBv
cHRpb24gY2hhbm5lbCAnMzYnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wdGlvbiBo
d21vZGUgJzExYScKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIHBhdGggJ3Nv
Yy80MDAwMDAwMC5wY2kvcGNpMDAwMDowMC8wMDAwOjAwOjAwLjAvMDAwMDowMTowMC4wJwo+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gaHRtb2RlICdWSFQ4MCcKPj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIGRpc2FibGVkICcwJwo+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBvcHRpb24gY291bnRyeSBVUwo+Pj4gIMKgwqDCoMKgIMKgwqDCoMKgIGNv
bmZpZyB3aWZpLWRldmljZSAncmFkaW8xJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBv
cHRpb24gdHlwZSAnbWFjODAyMTEnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wdGlv
biBjaGFubmVsICcxMScKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIGh3bW9k
ZSAnMTFnJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gcGF0aCAncGxhdGZv
cm0vc29jL2EwMDAwMDAud2lmaScKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9u
IGh0bW9kZSAnSFQyMCcKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIGRpc2Fi
bGVkICcwJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gY291bnRyeSBVUwo+
Pj4gIMKgwqDCoMKgIMKgwqDCoMKgIGNvbmZpZyB3aWZpLWRldmljZSAncmFkaW8yJwo+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gdHlwZSAnbWFjODAyMTEnCj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG9wdGlvbiBjaGFubmVsICcxNDknCj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIG9wdGlvbiBod21vZGUgJzExYScKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgb3B0aW9uIHBhdGggJ3BsYXRmb3JtL3NvYy9hODAwMDAwLndpZmknCj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG9wdGlvbiBodG1vZGUgJ1ZIVDgwJwo+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBvcHRpb24gZGlzYWJsZWQgJzAnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG9wdGlvbiBjb3VudHJ5IFVTCj4+PiAgwqDCoMKgwqAgwqDCoMKgwqAgY29uZmlnIHdp
ZmktaWZhY2UgJ21lc2gwJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIGRldmljZSAncmFk
aW8wJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIGlmbmFtZSAnbWVzaDAnCj4+PiAgwqDC
oMKgwqDCoMKgwqDCoCBvcHRpb24gbmV0d29yayAnbndpX21lc2gwJwo+Pj4gIMKgwqDCoMKgwqDC
oMKgwqAgb3B0aW9uIG1vZGUgJ21lc2gnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gbWVz
aF9pZCAnVGVzdE1lc2gnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gbWVzaF9md2Rpbmcg
JzEnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gZW5jcnlwdGlvbiAnbm9uZScKPj4+ICDC
oMKgwqDCoCDCoMKgwqDCoCBjb25maWcgd2lmaS1pZmFjZSAnbWVzaDEnCj4+PiAgwqDCoMKgwqDC
oMKgwqDCoCBvcHRpb24gZGV2aWNlICdyYWRpbzEnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBvcHRp
b24gaWZuYW1lICdtZXNoMScKPj4+ICDCoMKgwqDCoMKgwqDCoMKgIG9wdGlvbiBuZXR3b3JrICdu
d2lfbWVzaDEnCj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBvcHRpb24gbW9kZSAnbWVzaCcKPj4+ICDC
oMKgwqDCoMKgwqDCoMKgIG9wdGlvbiBtZXNoX2lkICdUZXN0TWVzaCcKPj4+ICDCoMKgwqDCoMKg
wqDCoMKgIG9wdGlvbiBlbmNyeXB0aW9uICdub25lJwo+Pj4gIMKgwqDCoMKgIMKgwqDCoMKgIMKg
wqDCoMKgIGNvbmZpZyB3aWZpLWlmYWNlICdtZXNoMicKPj4+ICDCoMKgwqDCoMKgwqDCoMKgIG9w
dGlvbiBkZXZpY2UgJ3JhZGlvMicKPj4+ICDCoMKgwqDCoMKgwqDCoMKgIG9wdGlvbiBpZm5hbWUg
J21lc2gyJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIG5ldHdvcmsgJ253aV9tZXNoMicK
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgIG9wdGlvbiBtb2RlICdtZXNoJwo+Pj4gIMKgwqDCoMKgwqDC
oMKgwqAgb3B0aW9uIG1lc2hfaWQgJ1Rlc3RNZXNoJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgb3B0
aW9uIG1lc2hfZndkaW5nICcxJwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgb3B0aW9uIGVuY3J5cHRp
b24gJ25vbmUKPj4+Cj4+PiBLaW5kIHJlZ2FyZHMsCj4+PiAgwqDCoMKgwqBTdmVuCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
