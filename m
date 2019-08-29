Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF08CA13DB
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 10:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EDMpGzA6Gik0CCIZrSSEFMhic8itD+TxSEC7OA6eFc=; b=HjXwQwC5+LYYiO
	LGICGZ0voPF5fZJeBZHPI7MOVeRqgq2mibd0Q4T8KG72qiNOUwSuFBPsHXSBZgPr6xcMIVKruMpL/
	t+E/Z5ElNE229Qx2YoQlXca+hwmJAbKBrt0FKpSNpTpviEzr7CAs0q858UXMHQuQcbFvIK1m9jhBd
	4zjCjD5eo2CGVmPOKXkRFtWtUeb6R97WrCF49+k9+gifYUx4VAkZ8qLu+0Vln71WqZbiiz4aabvPD
	mgH00PCuzIOw8bi8isOOEoXymOVMapKimdis72KpNQj/Tbl42TehtIOF2ZGiQEEislZ8dLJIubxC1
	YduWon7wHKOA46Kl33Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Fu2-00017N-J1; Thu, 29 Aug 2019 08:35:34 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ftt-000172-0m
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 08:35:26 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:303:dc7b:2886:93ff:fe90:318c])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x7T8ZKrE026125
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 29 Aug 2019 10:35:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1567067721; bh=qCz6pY06rjuTlbHXl19w5QDARVYl6kFLewsWHZ5PpFg=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=g046epH0HgEpJojM7tqD06Bxpz+N0NRHSfKb0+sAMxAmDUJHDsxPBttpuDSnGiqoQ
 zbI8KHtAp5tsG/XxlKuFnqoTjhAbpw+Dbyl4Qw0+Y2Uypo/xhfLn7WnJ5eSt0Hrli5
 zM+Qg4DbKUztaW+pNR8+Yut+E/FBYEsK3Mwa+Mds=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1i3Ftn-0000uF-Lv; Thu, 29 Aug 2019 10:35:19 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Martin Schiller <ms@dev.tdt.de>
Organization: m
References: <20190704113537.22078-1-ms@dev.tdt.de>
 <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
 <3a1da3051d2e1736423f7e4ada4acdfc@dev.tdt.de>
Date: Thu, 29 Aug 2019 10:35:19 +0200
In-Reply-To: <3a1da3051d2e1736423f7e4ada4acdfc@dev.tdt.de> (Martin Schiller's
 message of "Thu, 29 Aug 2019 09:29:57 +0200")
Message-ID: <875zmgnzco.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_013525_403342_BF15ACE5 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH uqmi] nas: add --get-plmn
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
Cc: openwrt-devel@lists.openwrt.org, sami@olmari.fi, nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TWFydGluIFNjaGlsbGVyIDxtc0BkZXYudGR0LmRlPiB3cml0ZXM6Cgo+IE9uIDIwMTktMDgtMjYg
MjE6MTIsIFNhbWkgT2xtYXJpIHdyb3RlOgo+PiBJIHRoaW5rIHRoZSBpZGVvbG9neSBiZWhpbmQg
cHJvdG8gaGFuZGxlciB0aGVyZSBpcyB0byAiZG8gd2hhdGV2ZXIKPj4gdG9sZCIgZGVzcGl0ZSBv
ZiB3aGF0IHRoZSBzdGF0ZSBpcyBjdXJyZW50bHksCj4+IG1heWJlIHRoZXJlIGlzIGEgcmVhc29u
IGZvciBzdWNoIGJlaGF2aW91ciAoc2VhcmNoZXMgc29tZSBzdHVmZiBmcm9tCj4+IG5ldHdvcmsg
ZXRjKS4KPgo+IFRoZXJlIGV4aXN0IDIgcHJvYmxlbXMgaW4gdGhlIHFtaSBwcm90byBoYW5kbGVy
Ogo+Cj4gMS4gU2V0dGluZyB0aGUgcGxtbiB0byAnYXV0bycgd2lsbCBpbXBsaWNpdGx5IGxlYWQg
dG8gYSAoZGVsYXllZCkKPiBuZXR3b3JrIHJlLXJlZ2lzdHJhdGlvbiwgd2hpY2ggY291bGQgZnVy
dGhlciBsZWFkIHRvIHNvbWUgdGltaW5nCj4gcmVsYXRlZCBpc3N1ZXMgaW4gdGhlIHFtaSBwcm90
byBoYW5kbGVyLgo+IExldCBtZSBleHBsYWluIHRoaXMgaW4gbW9yZSBkZXRhaWw6Cj4gQWZ0ZXIg
c3VjY2Vzc2Z1bGx5IGNhbGxpbmcgdGhlIHVxbWkgLS1zZXQtcGxtbiAoYXV0bykgY29tbWFuZCBp
dCB0YWtlcwo+IHVwIHRvIDUgKG9yIG1heWJlIGV2ZW4gbW9yZSkgc2Vjb25kcyB1bnRpbCB0aGUg
bW9kZW0gZGV0YWNoZXMgZnJvbQo+IG5ldHdvcmsKPiBhbmQgc3RhcnQgc2VhcmNoaW5nIGZvciBu
ZXcgcmVnaXN0cmF0aW9uLgo+Cj4gSW4gdGhlIG1lYW50aW1lIHRoZSBwcm90byBoYW5kbGVyIGdv
ZXMgdGhyb3VnaCB0aGUgbmV4dCBzdGVwcwo+ICgiV2FpdGluZyBmb3IKPiBuZXR3b3JrIHJlZ2lz
dHJhdGlvbiIsICJTdGFydCBuZXR3b3JrICRpbnRlcmZhY2UiIGV0Yy4pLgo+Cj4gSSBob3BlIHlv
dSBjYW4gc2VlIHdlcmUgdGhpcyBsZWFkcyB0by4KPgo+IFRoaXMgaXMgcmVhbGx5IGEgcHJvYmxl
bSBpbiBSb2FtaW5nIHNjZW5hcmlvcywgd2hlcmUgdG8gcHJvdmlkZXIgbWF5YmUKPiBpcwo+IHN3
aXRjaGVkIGFmdGVyIHRoZSByZS1yZWdpc3RyYXRpb24uCgoKRldJVywgSSBhbHNvIGJlbGlldmUg
dGhpcyBpcyBhIHJlYWwgcHJvYmxlbS4KClRoZSBtb2RlbSBmaXJtd2FyZSBpc24ndCBhbHdheXMg
c21hcnQuICBJdCB3aWxsICJkbyB3aGF0ZXZlciB0b2xkIiwgZXZlbgppZiBpdCBpcyBhIGNvbXBs
ZXRlbHkgdW5uZWNlc3NhcnkgZGUtcmVnaXN0cmF0aW9uLCBuZXR3b3JrIHNjYW4gYW5kCnJlLXJl
Z2lzdHJhdGlvbi4KCldlIGNhbiBiZSBzbWFydGVyIHRoYW4gdGhhdC4gIFdlIHNob3VsZCBhdm9p
ZCBjaGFuZ2luZyBhbnkgcGVyc2lzdGVudAooaW4gbW9kZW0gbnZyYW0pIHNldHRpbmcgcmVsYXRl
ZCB0byBuZXR3b3JrIHJlZ2lzdHJhdGlvbiwgdW5sZXNzCmFic29sdXRlbHkgbmVjZXNzYXJ5LgoK
PiAyLiBUaGUgcGxtbiBzZXR0aW5nIGlzIHBlcm1hbmVudGx5IHNhdmVkIGluIHRoZSB3d2FuIG1v
ZGVtOgo+IFRoaXMgbGVhZHMgdG8gdGhlIHByb2JsZW0sIHRoYXQgaWYgeW91IHN3aXRjaCBiYWNr
IGZyb20gbWFudWFsIHBsbW4KPiBzZWxlY3Rpb24KPiB0byBhdXRvIG1vZGUgeW91IGhhdmUgdG8g
c2V0IGl0IGV4cGxpY2l0bHkgdG8gJ2F1dG8nLgoKWWVzLCB0aGUgY3VycmVudCBoYW5kbGVyIHdp
bGwgdXNlIHdoYXRldmVyIGlzIHN0b3JlZCBpbiB0aGUgbW9kZW0gdW5sZXNzCidwbG1uJyBpcyBl
eHBsaWN0bHkgc2V0LiAgVGhpcyBpcyB2ZXJ5IGNvbmZ1c2luZyBpZiB5b3Ugc2V0ICdwbG1uJwp0
ZW1wb3JhcmlseSwgd2hldGhlciBpdCBpcyBmb3Igcm9hbWluZyBvciBqdXN0IGV4cGVyaW1lbnRp
bmcuIFVzZXJzIHdpbGwKcmlnaHRmdWxseSBhc3N1bWUgdGhhdCBhZGRpbmcgYW5kIHRoZW4gcmVt
b3ZpbmcgJ3BsbW4nIG1lYW5zICdubwpjaGFuZ2UnLgoKRXZlcnl0aGluZyBpbiB0aGUgcW1pIHBy
b3RvIGhhbmRsZXIgc2hvdWxkIHRha2UgaW50byBhY2NvdW50IHRoYXQKc2V0dGluZ3MgbWlnaHQg
YmUgc3RvcmVkIGluIHRoZSBtb2RlbSBudnJhbS4gIE9wdGlvbmFsIHNldHRpbmdzIG5lZWQgYW4K
ZXhwbGljaXQgZGVmYXVsdCwgYW5kIHNob3VsZCBhbHdheXMgYmUgdmVyaWZpZWQgYWdhaW5zdCB0
aGUgdmFsdWUgc3RvcmVkCmluIHRoZSBtb2RlbS4KCkkgYmVsaWV2ZSB0aGUgJ3BsbW4nIGRlZmF1
bHQgc2hvdWxkIGJlICdhdXRvJy4gQnV0IHdlIGNhbiBvbmx5IGRvIHRoYXQKaWYgd2UgZmlyc3Qg
YWRkIHRoZSBsb2dpYyB0byB2ZXJpZnkgdGhlIGN1cnJlbnQgc2V0dGluZyBhbmQgYXZvaWQgYW55
CnVubmVjZXNzYXJ5ICd1cW1pIC0tc2V0LXBsbW4nIGNvbW1hbmRzLgoKCgpCasO4cm4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
