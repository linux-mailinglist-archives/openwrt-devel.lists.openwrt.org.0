Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F8320FA9
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 22:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5shKRYFS81hhhIfEoqwXtn8i5Amtw8iEae8xaTQbHM=; b=IBr30M8gJquoNN
	6yMy0ijnsTIGQhKGp+hVmzhHay8nJ5aATPIIPammePUrf2q6rczRMk2fnHm7kyVgUjQvOI52kg6qW
	uRcwD7V7XKqWvk13xyam4R4ezQdPkDbr6Oalv+zQjWpaaV1SAgLd2y1wMu2CFAW4uaYVJ7wr3mKee
	VM22Y5YdP+XjKR5GFFaxnFtN2ljpfcSbtm3unkuumDuFFl/PjbyYkUCgYX5qbYO75RSWAL0aAOl6q
	OGb8f+v0BoFHTXNsRKs9ska6O4d9DQIYsX1yjiyJKrj7y6IY3Eu7vhsrWRH3ZXsbE0oZT6EKxs9/f
	SCc2gpNYXQ+TxyYdIfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRN75-0006Qo-Bj; Thu, 16 May 2019 20:36:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRN70-0006QT-CH
 for openwrt-devel@bombadil.infradead.org; Thu, 16 May 2019 20:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CgjnwQ8iRz+huDOb4FWr/ptpGLHXqa5Yr1AC+h1SJ9M=; b=BXyiUh7/eDZ/EvVI627f69f+Qf
 +xaaB/CjJKLtECVBB0fWeoJO81/zTMcv8yB7x3gMIH6fvn53ZknT05EDLCzO9VsXxHUS7FAL0iKf9
 GalzBbzBvtYXnqwYVn47FPv8s3G/fz4oRR5dDaZZvMhAcW9pkr4c25YZkwLjBcp9oDKeK8yuTP1uR
 a1uAt0Bz6MYCmuzJPfAa2KGhn82vRey4upmRvYRaCzyWV1fOPHaRtvnP7LOB9CUUNUPr6sKamKN70
 fnp7tOgUoTPjYUJHNEXDTrgqkJgeRjs6/B+F7ph6411iRu3mjCf7SAhVETaJf8yO94yK8DusrosUo
 wLpgEBGA==;
Received: from mx-out.tlen.pl ([193.222.135.140])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRN6v-0000y5-TP
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 20:36:20 +0000
Received: (wp-smtpd smtp.tlen.pl 14044 invoked from network);
 16 May 2019 22:35:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1558038938; bh=CgjnwQ8iRz+huDOb4FWr/ptpGLHXqa5Yr1AC+h1SJ9M=;
 h=Subject:To:Cc:From;
 b=LyeIVAcEUj78z4uwszFyM97dtlbD1aYCVCHhQS7C/2j3X07v7/9mhXKXgMqTz00cR
 E45GzlPvdxH+D/WWe1Ee2kpWozkeHkpO1Pr6ro1/m31rFSTZ8UvFlomXNyfsWS+Cem
 aoAVPhmw/bYXQNAzyaQO3qm7qZfryabQmVLPJwPw=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <sebastien.duponcheel@corp.ovh.com>; 16 May 2019 22:35:37 +0200
To: =?UTF-8?Q?Marek_Beh=c3=ban?= <marek.behun@nic.cz>,
 openwrt-devel@lists.openwrt.org
References: <20190516183828.15647-1-marek.behun@nic.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl>
Date: Thu, 16 May 2019 22:35:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516183828.15647-1-marek.behun@nic.cz>
Content-Language: en-US
X-WP-MailID: 1a0e6f55fb122427b4ce54c102420a8e
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [sZOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_163618_208229_ABDC3155 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Add support for kernel 4.19
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Jeremiah McConnell <miah@miah.com>,
 Marko Ratkaj <marko.ratkaj@sartura.hr>,
 Michael Gray <michael.gray@lantisproject.com>,
 =?UTF-8?Q?DUPONCHEEL_S=c3=a9bastien?= <sebastien.duponcheel@corp.ovh.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Ryan Mounce <ryan@mounce.com.au>, Russell King <rmk+kernel@armlinux.org.uk>,
 Rosen Penev <rosenp@gmail.com>, Stijn Segers <foss@volatilesystems.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, Imre Kaloz <kaloz@openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgTWFyZWssCgpXIGRuaXUgMTYuMDUuMjAxOSBvwqAyMDozOCwgTWFyZWsgQmVow7puIHBpc3pl
Ogo+IEFkZCBzdXBwb3J0IGZvciBrZXJuZWwgNC4xOSB0byB0aGUgbXZlYnUgdGFyZ2V0Lgo+IAo+
IFRoaXMgaXMgdGhlIGZpcnN0IHZlcnNpb24sIHVuZm9ydHVuYXRlbHkgSSBvbmx5IGhhdmUgVHVy
cmlzIE9tbmlhIGFuZAo+IFR1cnJpcyBNb3ggdG8gdGVzdCB0aGlzIG9uLCBhbmQgVHVycmlzIE1v
eCBpcyBub3QgeWV0IHN1cHBvcnRlZCBpbiB0aGVzZQo+IHBhdGNoZXMuCgpZb3UgYmVhdCBtZSB0
byBpdCwgYnV0IG5vdCBvbmx5IFlvdSBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0
L3B1bGwvMTY0Ni4KT25seSByZWNlbnRseSBJIGhhZCB0aW1lIHRvIGxvb2sgYXQgaXQgYW5kIHRo
aXM6Cmh0dHBzOi8vZ2l0aHViLmNvbS90bW41MDUvb3BlbndydC90cmVlL212ZWJ1LTQuMTkKaXMg
bXkgc2hvdCBhdCBpdCAoYmFzZWQgb24gaW5pdGlhbCBNYXJrbyBSYXRrYWogd29yaykuIEkgYXNr
ZWQgU8OpYmFzdGllbiBpbgptZW50aW9uZWQgUFIgb24gR2l0SHViIGlmIEkgY2FuIHNlbmQgaXQg
aGVyZS4KCkp1c3QgeWVzdGVyZGF5IGFuZCB0b2RheSBJIGdvdCByZXBvcnQgZnJvbSBvd25lcnMg
b2YgV1JUMTkwMEFDIGFuZCBXUlQzMlggdGhhdCB0aGVpcgpOQU5EIGNoaXBzIGFyZSB3b3JraW5n
OgpodHRwczovL2ZvcnVtLm9wZW53cnQub3JnL3Qva2VybmVsLTQtMTktdXBncmFkZS1pc3N1ZS1v
bi1tdmVidS10YXJnZXQtcy8zMjk2Ni8zMgpodHRwczovL2ZvcnVtLm9wZW53cnQub3JnL3Qva2Vy
bmVsLTQtMTktdXBncmFkZS1pc3N1ZS1vbi1tdmVidS10YXJnZXQtcy8zMjk2Ni8zNApTbyBpdCBz
ZWVtcyB0aGF0IG1vc3QgZGlmZmljdWx0IGRldmljZXMgYXJlIHdvcmtpbmcuIFVuZm9ydHVuYXRl
bHkgSSBkb24ndCBoYXZlCmFueXRoaW5nIHdpdGggU0ZQLCBzbyB3b3VsZCBiZSBuaWNlIHRvIGtu
b3cgaWYgYW55dGhpbmcgbmVlZHMgdG8gYmUgYWRkZWQuCgo+IAo+IFNvIGlmIHlvdSBndXlzIGNv
dWxkIHRyeSB0aGlzIGFuZCBnaXZlIGZlZWRiYWNrLgoKTW9zdCBvZiB0aGUga2VwdCBwYXRjaGVz
IGFyZSBzaW1pbGFyIGFuZCBvbiBFU1BSRVNTT2JpbiBldmVyeXRoaW5nIHNlZW1zIHRvIHdvcmsg
T0suCgo+IAo+IFRoaXMgZG9lcyBub3QgYWRkIGRlZmF1bHQgY29uZmlnIGZvciA0LjE5LCB0aGlz
IHdvdWxkIGFsc28gYmUgbmVlZGVkLgoKVGhlcmUncyBub3QgbXVjaCB0byBiZSBhZGRlZCwgc2lt
cGxlIHJlZnJlc2ggZm9yIGNvcnRleGE5IGtlcm5lbCBjb25maWcgc2hvdWxkIGRvLApidXQgY29y
dGV4YTUzIGFuZCBjb3J0ZXhhNzIgbmVlZHMgdGhpcyBBUk02NF9TVkUgYWRkZWQsIHNvIGl0IHdv
bid0IGVycm9yIG91dCB3aGVuCmJ1aWxkaW5nLgoKPiAKPiBJIG1hbnVhbGx5IHdlbnQgdGhyb3Vn
aCBhbGwgdGhlIHBhdGNoZXMgZnJvbSA0LjE0IGFuZCByZW1vdmVkIHRob3NlCj4gd2hpY2ggYXJl
IGFscmVhZHkgaW4gNC4xOSB1cHN0cmVhbS4gVGhvc2UgcGF0Y2hlcyB3aGljaCBkaWQgbm90IGFw
cGx5IEkKPiBwYXRjaGVkIG1hbnVhbGx5LiBPbmUgb2YgdGhlbSwKPiA1MjQtUENJLWFhcmR2YXJr
LXNldC1ob3N0LWFuZC1kZXZpY2UtdG8tdGhlLXNhbWUtTUFYLXBheWxvYWQtc2l6ZS5wYXRjaCwK
PiBjb3VsZCBub3QgYmUgYXBwbGllZCwgYmVjYXVzZSB0aGUgY29kZSBpbiBwY2ktYWFyZHZhcmsg
Y2hhbmdlZCB0b28gbXVjaC4KCkkgcmV2ZXJ0ZWQgdGhlIGM4ZTE0NGY4YWIgKCJQQ0k6IGFhcmR2
YXJrOiBDb252ZXJ0IHRvIHVzZSBwY2lfaG9zdF9wcm9iZSgpIikgd2hpY2gKd2FzIG1vc3RseSBj
b2RlIGNsZWFudXAgKHRoYXQncyBob3cgSSB1bmRlcnN0YW5kIGl0KSwgYWZ0ZXIgdGhhdCB0aGUg
bWVudGlvbmVkIHBhdGNoCmNvdWxkIHN0aWxsIGFwcGx5LgoKPiBNb3Jlb3ZlciB1cHN0cmVhbSBz
b2x2ZWQgdGhlIGlzc3VlIHRoaXMgcGF0Y2ggd2FzIHNvbHZpbmcgZGlmZmVyZW50bHkKPiAodmlh
IHBjaS1lbXVsLWJyaWRnZSkuIEkgZGlkIG5vdCBiYWNrcG9ydCBwY2ktZW11bC1icmlkZ2UsIHBl
cmhhcHMgdGhpcwo+IHdvdWxkIGJlIG5lZWRlZCAoYnV0IGlzIG5vdCBvbiBUdXJyaXMgTW94IHdp
dGggaXRzIGRlZmF1bHQgUENJZSBjYXJkKS4KCkkgZGlkbid0IG9ic2VydmUgYW55IGlzc3VlcyB3
aXRoIEFhcmR2YXJrIGRyaXZlciBmcm9tIDQuMTkgd2l0aCBjdXJyZW50IHBhdGNoZXMsIHNvCkkg
dGhpbmsgd2UgY2FuIGxlYXZlIHRoYXQgZm9yIG5leHQga2VybmVsIGJ1bXAuCgpXaGF0IEkgd291
bGQgbGlrZSB0byBhc2sgaXMgaWYgWW91J3ZlIGhhZCBhbHNvIGxpbmsgdHJhaW5pbmcgaXNzdWVz
IHdpdGggUENJZSBwb3J0CmFuZCBwYXJ0aWN1bGFyIEF0aGVyb3MvUXVhbGNvbW0gKEFSMzg5MCwg
UUNBOTg5MCkgd2lmaSBjYXJkcyBvbiBUdXJyaXMgTU9YPyBXaGljaCB3ZQp3b3JrIGFyb3VuZCB3
aXRoIHRoZXNlIHBhdGNoZXM6CjUyNy1QQ0ktYWFyZHZhcmstYWxsb3ctdG8tc3BlY2lmeS1saW5r
LWNhcGFiaWxpdHkucGF0Y2gKNTI4LWFybTY0LWR0cy1hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi1z
ZXQtbWF4LWxpbmstdG8tZ2UucGF0Y2gKT3IgZG8gWW91IHVzZSBkaWZmZXJlbnQgY2hpcCB2ZW5k
b3JzPwoKPiAKPiBJIHVzZWQgbmV3IHBhdGNoZXMgZm9yIFNGUCBzdXBwb3J0IGZyb20gUnVzc2Vs
bCBLaW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6biA8bWFyZWsuYmVodW5Abmlj
LmN6Pgo+IENjOiBSdXNzZWxsIEtpbmcgPHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPgo+IENj
OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cj4gQ2M6IEhhdWtlIE1laHJ0ZW5zIDxoYXVr
ZUBoYXVrZS1tLmRlPgo+IENjOiBJbXJlIEthbG96IDxrYWxvekBvcGVud3J0Lm9yZz4KPiBDYzog
SmVyZW1pYWggTWNDb25uZWxsIDxtaWFoQG1pYWguY29tPgo+IENjOiBKb25hcyBHb3Jza2kgPGpv
bmFzLmdvcnNraUBnbWFpbC5jb20+Cj4gQ2M6IEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxsZGly
QGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPgo+IENjOiBLb2VuIFZhbmRlcHV0dGUgPGtvZW4udmFu
ZGVwdXR0ZUBuY2VudHJpYy5jb20+Cj4gQ2M6IE1pY2hhZWwgR3JheSA8bWljaGFlbC5ncmF5QGxh
bnRpc3Byb2plY3QuY29tPgo+IENjOiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiBD
YzogUnlhbiBNb3VuY2UgPHJ5YW5AbW91bmNlLmNvbS5hdT4KPiBDYzogU3Rpam4gU2VnZXJzIDxm
b3NzQHZvbGF0aWxlc3lzdGVtcy5vcmc+Cj4gQ2M6IFN0aWpuIFRpbnRlbCA8c3Rpam5AbGludXgt
aXB2Ni5iZT4KPiBDYzogVG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4KClJlZ2Fy
ZHMKCi0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
