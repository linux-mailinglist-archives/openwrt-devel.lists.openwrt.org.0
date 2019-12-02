Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E1B10E981
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Dec 2019 12:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zxse2kau0Bm7KI7zpC7kPZUTV+FtADJSTg14E5mMQs4=; b=G3OppzBZxV5EVymyXlBZeMxKy
	NDgSnjuGleUtSXcJP2vvkiDXYRx1bS1VLMOjZNChCDSaBFWE//bakwXt0hRM5HAiPY4VkjUcP8AiL
	2RVjmpQy+aa8eyjh5EwIw/zVNUF5QzrhiXsVrETWSdOTt9wh1tF4OUk5lu72MxG6P/rmvSatrccgN
	+xWUI8xvvzFX4EcqDMmYd6DybhTikv2kVq+bHL6s6B4dZbYQLZpxp3QZ33FoOWfuH9DqmdPlGUx61
	gIT/aKJFnTJx5EHRlcAYotAEZ2RZg2CgIa2d32A6TOxOcg/seJuZft46zUbT8S+fF5hDsNmixgt7h
	b/QpoJNdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibjoA-00020Z-OZ; Mon, 02 Dec 2019 11:24:02 +0000
Received: from mail.nic.br ([2001:12ff:0:4::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibjo4-0001zj-Uj
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 11:23:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.nic.br (Postfix) with ESMTP id 758FE156857;
 Mon,  2 Dec 2019 09:23:46 -0200 (-02)
Authentication-Results: mail.nic.br (amavisd-new); dkim=pass (1024-bit key)
 header.d=nic.br
Received: from mail.nic.br ([127.0.0.1])
 by localhost (mail.nic.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cOeuECWL6Zjn; Mon,  2 Dec 2019 09:23:46 -0200 (-02)
Received: from 5.141.net.registro.br (unknown [IPv6:2001:12ff:0:5::141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: henrique@nic.br)
 by mail.nic.br (Postfix) with ESMTPSA id 3EFF515423E;
 Mon,  2 Dec 2019 09:23:46 -0200 (-02)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nic.br; s=dkim;
 t=1575285826; bh=Doo3xLDWZlHICoS8lMsJo2NfSwXKVoPqER+5s1MoiQo=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=UVv/Q8/8h2TUTir/AnAVePZf7i9u7Lcb1nquIqD/RcOtpeP/9E4GWWDUqWTBAW5nF
 58YJdZ4YUf5fg5wJwhP838Rtbox8QdN8t9cucNpDh0rE4olQ1K3Ow9plnB2mnzZ96o
 AlfQubRxEpkW5D/CI6A5cGBwerUOuoIUlPsW+e9g=
To: Stijn Segers <foss@volatilesystems.org>
References: <20191201143316.7641-1-foss@volatilesystems.org>
From: Henrique de Moraes Holschuh <henrique@nic.br>
Organization: NIC.br
Message-ID: <087739b6-da98-2fdd-c1f6-12be8b9d0bd5@nic.br>
Date: Mon, 2 Dec 2019 08:23:40 -0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191201143316.7641-1-foss@volatilesystems.org>
Content-Language: pt-BR
DMARC-Filter: OpenDMARC Filter v1.3.1 mail.nic.br 3EFF515423E
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_032357_163674_BC5D436D 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:12ff:0:4:0:0:0:5 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] amd64-microcode: update to 20191021
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBvbmUgcmVncmVzc2VzIHNvbWUgQU1EIHByb2Nlc3NvcnMgaW4gc29tZSAoYWxsPykgbW90
aGVyYm9hcmRzLiAgSXQgCmhhcyBiZWVuIHJlcG9ydGVkIHRvIFVidW50dSBieSBzZXZlcmFsIHVz
ZXJzLgoKSXQgaXMgZmluZSBmb3IgbWFzdGVyLCBtYXliZSwgYnV0IEkgd291bGQgbm90IGxldCBp
dCBpbnRvIGEgc3RhYmxlIApPcGVuV1JUIHJlbGVhc2UgcmlnaHQgbm93LgoKKHNwb2tlbiB1c2lu
ZyBteSBEZWJpYW4gRGV2ZWxvcGVyIGhhdCwgYXMgdGhlIERlYmlhbiBtYWludGFpbmVyIGZvciAK
YW1kNjQtbWljcm9jb2RlKS4KCgpFbSAwMS8xMi8yMDE5IDExOjMzLCBTdGlqbiBTZWdlcnMgZXNj
cmV2ZXU6Cj4gKiBOZXcgbWljcm9jb2RlIHVwZGF0ZSBwYWNrYWdlcyBmcm9tIEFNRCB1cHN0cmVh
bSAoMjAxOTEwMjEpOgo+ICAgICAgKyBOZXcgTWljcm9jb2RlczoKPiAgICAgICAgc2lnIDB4MDA4
MzBmMTAsIHBhdGNoIGlkIDB4MDgzMDEwMjUsIDIwMTktMDctMTEKPiAgICAgICsgVXBkYXRlZCBN
aWNyb2NvZGVzOgo+ICAgICAgICBzaWcgMHgwMDgwMGYxMiwgcGF0Y2ggaWQgMHgwODAwMTI1MCwg
MjAxOS0wNC0xNgo+ICAgICAgICBzaWcgMHgwMDgwMGY4MiwgcGF0Y2ggaWQgMHgwODAwODIwZCwg
MjAxOS0wNC0xNgo+IAo+ICogTmV3IG1pY3JvY29kZSB1cGRhdGUgcGFja2FnZXMgZnJvbSBBTUQg
dXBzdHJlYW0gKDIwMTgxMTI4KQo+ICAgICAgKyBOZXcgTWljcm9jb2RlczoKPiAgICAgICAgc2ln
IDB4MDA4MDBmODIsIHBhdGNoIGlkIDB4MDgwMDgyMGIsIDIwMTgtMDYtMjAKPiAKPiBUaGlzIHBh
dGNoIGluY29ycG9yYXRlcyBib3RoIHRoZSAyMDE4MTEyOCBhbmQgMjAxOTEwMjEgdXBkYXRlcy4K
PiBDaGFuZ2Vsb2cgY29waWVkIGZyb20gdGhlIGRlYmlhbiBwYWNrYWdlIGNoYW5nZWxvZ3MuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogU3Rpam4gU2VnZXJzIDxmb3NzQHZvbGF0aWxlc3lzdGVtcy5vcmc+
Cj4gLS0tCj4gICBwYWNrYWdlL2Zpcm13YXJlL2FtZDY0LW1pY3JvY29kZS9NYWtlZmlsZSB8IDQg
KystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9maXJtd2FyZS9hbWQ2NC1taWNyb2NvZGUvTWFrZWZp
bGUgYi9wYWNrYWdlL2Zpcm13YXJlL2FtZDY0LW1pY3JvY29kZS9NYWtlZmlsZQo+IGluZGV4IDRm
ZDNkMDQ2MTAuLjlkNTYyYzFiNTkgMTAwNjQ0Cj4gLS0tIGEvcGFja2FnZS9maXJtd2FyZS9hbWQ2
NC1taWNyb2NvZGUvTWFrZWZpbGUKPiArKysgYi9wYWNrYWdlL2Zpcm13YXJlL2FtZDY0LW1pY3Jv
Y29kZS9NYWtlZmlsZQo+IEBAIC04LDEyICs4LDEyIEBACj4gICBpbmNsdWRlICQoVE9QRElSKS9y
dWxlcy5tawo+ICAgCj4gICBQS0dfTkFNRTo9YW1kNjQtbWljcm9jb2RlCj4gLVBLR19WRVJTSU9O
Oj0yMDE4MDUyNAo+ICtQS0dfVkVSU0lPTjo9MjAxOTEwMjEKPiAgIFBLR19SRUxFQVNFOj0xCj4g
ICAKPiAgIFBLR19TT1VSQ0U6PWFtZDY0LW1pY3JvY29kZV8zLiQoUEtHX1ZFUlNJT04pLiQoUEtH
X1JFTEVBU0UpLnRhci54ego+ICAgUEtHX1NPVVJDRV9VUkw6PWh0dHA6Ly9mdHAuZGViaWFuLm9y
Zy9kZWJpYW4vcG9vbC9ub24tZnJlZS9hL2FtZDY0LW1pY3JvY29kZS8KPiAtUEtHX0hBU0g6PTdj
Mzg5YzM1N2MyNDJlNzE2MWY2ODcyYmY0ZTEyMDExYTcxZTRjMDY4M2YwNmZiMWJjZmFkNjUwYTc4
YmYwYTkKPiArUEtHX0hBU0g6PTNjMjg5Y2Y2ZjhhNzYxZTEyMzJkZTE3ZjQ3YmI0ZTA1YTlkMjcz
OWFkOGU2Y2NiNjQzZjcxZGRjMDhiYTYxZjIKPiAgIFBLR19CVUlMRF9ESVI6PSQoQlVJTERfRElS
KS8kKFBLR19OQU1FKS0zLiQoUEtHX1ZFUlNJT04pLiQoUEtHX1JFTEVBU0UpCj4gICAKPiAgIFBL
R19MSUNFTlNFX0ZJTEU6PUxJQ0VOU0UuYW1kLXVjb2RlCj4gCgotLSAKSGVucmlxdWUgZGUgTW9y
YWVzIEhvbHNjaHVoCkFuYWxpc3RhIGRlIFByb2pldG9zCkNlbnRybyBkZSBFc3R1ZG9zIGUgUGVz
cXVpc2FzIGVtIFRlY25vbG9naWFzIGRlIFJlZGVzIGUgT3BlcmHDp8O1ZXMgCihDZXB0cm8uYnIp
Cis1NSAxMSA1NTA5LTM1MzcgUi46NDAyMwpJTk9DIDIyNTQ4KjYyNQp3d3cubmljLmJyCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
