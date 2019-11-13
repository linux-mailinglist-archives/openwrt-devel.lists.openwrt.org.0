Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051EBFBAEE
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 22:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EaucD1bdgEpaB29LjOG4n1NUIQd6D4p0+uGYwvCzqaE=; b=jNhuaZBRAV6SLwRVapFwkR7U6
	QOV2a5lEX5mbMCHXSu1iAjUYxlJbgC527GGXQ9x31szCWn5NhjCEVYiHgGtrmPSZxyYYFkmqP3/aI
	aXXj8/oMOb9OWdEfDJGpdnmO7P2zGPYhngNPkkvFXqaeICZBlS3a9CEPj+hFl6X0K5X4zOq/GbNvV
	MNaP6Ntmrkv0PCVgyjUVkgeNHYgPcHTOOkQTBpGxgDn8l8hPAtxVIWMgVfy55eb95t/s29p5eiV5R
	++fFDVNDtNc+YBkqbd3uWRUv4lCxCTp0oNVBcCWEyI27YKGRueEOaQmuWLdA/ZaHjZBnbbvSbWCF0
	yqCf3OGpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV0Lh-0004mO-Nm; Wed, 13 Nov 2019 21:38:49 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV0Ld-0004lk-Pl
 for openwrt-devel@bombadil.infradead.org; Wed, 13 Nov 2019 21:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XbVDZXxHP4tEBqErUuZbJxHY6kLDWTbJPTCYHE9Dl4U=; b=NCfYDmIMfV4IWjIchBgDWw9hWY
 wnh3OrfLChlatsvLJeIa6p3qpzLFNpcnfCRk0apeCBdyqwCNFAG18WK0y/RGAVenzAkGXpr7E4GWo
 YPNupAVBWSOrmiI02Dre7/H9Wq3aLjJ8ZNI4MhiiBLVGU/kBKK5KZBNofpWVeE1QjN7RygMyZo3no
 lRpQDdO3TQFoNb0uGaa+kz6qSexLWOkF9fvFu4PV6ye8Lss03Yn+4heiT8liJCZhnxdl1pRuoVzvb
 VB3Gki/OFivu8tpMsPFSYVATFEKpDnP6IfS/1+LgF5+zo76vcjbqeRodswNmLGVp+VromPSMjTTqU
 0YrUBs7A==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV0La-0001z9-3e
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 21:38:43 +0000
X-Originating-IP: 168.105.232.188
Received: from [168.105.232.188] (unknown [168.105.232.188])
 (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BE10040007;
 Wed, 13 Nov 2019 21:38:00 +0000 (UTC)
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <thomas@t-8ch.de>,
 openwrt-devel@lists.openwrt.org
References: <20191113200931.106783-1-thomas@t-8ch.de>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <dd199f75-1a9c-6707-1d7c-1c0f1c3c06fa@aparcar.org>
Date: Wed, 13 Nov 2019 11:37:58 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191113200931.106783-1-thomas@t-8ch.de>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] build: support python 3.8
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

TEdUTQoKT24gMTEvMTMvMTkgMTA6MDkgQU0sIFRob21hcyBXZWnDn3NjaHVoIHdyb3RlOgo+IFNp
Z25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDx0aG9tYXNAdC04Y2guZGU+Cj4gLS0tCj4g
ICBpbmNsdWRlL3ByZXJlcS1idWlsZC5tayB8IDIgKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3ByZXJlcS1idWlsZC5tayBiL2lu
Y2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCj4gaW5kZXggNGM1OTkxMDA1Ni4uNjViYWYxZjVlNSAxMDA2
NDQKPiAtLS0gYS9pbmNsdWRlL3ByZXJlcS1idWlsZC5tawo+ICsrKyBiL2luY2x1ZGUvcHJlcmVx
LWJ1aWxkLm1rCj4gQEAgLTE0NCwxMiArMTQ0LDE0IEBAICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0
Q29tbWFuZCxwZXJsLFBsZWFzZSBpbnN0YWxsIFBlcmwgNS54LCBcCj4gICAkKGV2YWwgJChjYWxs
IENsZWFudXBQeXRob24yKSkKPiAgIAo+ICAgJChldmFsICQoY2FsbCBTZXR1cEhvc3RDb21tYW5k
LHB5dGhvbixQbGVhc2UgaW5zdGFsbCBQeXRob24gPj0gMy41LCBcCj4gKwlweXRob24zLjggLVYg
Mj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwKPiAgIAlweXRob24zLjcgLVYg
Mj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwKPiAgIAlweXRob24zLjYgLVYg
Mj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwKPiAgIAlweXRob24zLjUgLVYg
Mj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwKPiAgIAlweXRob24zIC1WIDI+
JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nKSkKPiAgIAo+ICAgJChldmFsICQoY2Fs
bCBTZXR1cEhvc3RDb21tYW5kLHB5dGhvbjMsUGxlYXNlIGluc3RhbGwgUHl0aG9uID49IDMuNSwg
XAo+ICsJcHl0aG9uMy44IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nLCBc
Cj4gICAJcHl0aG9uMy43IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nLCBc
Cj4gICAJcHl0aG9uMy42IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nLCBc
Cj4gICAJcHl0aG9uMy41IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nLCBc
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
