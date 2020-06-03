Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1F21ED026
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 14:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09pe0qwqsB/BiOWuTsTanU3tETKC6hlGxUrK1G5hmAk=; b=qHxnKDT4QXF2SZ
	Z8Av0GEwsQV2piZEalg+aMYf8PpAgK93WuXKVeGx/0j0PYjEZXuwBHbaaqAzxbovPQ4HmKNqvr7Dq
	KsV1FXpk784E09ilBs3kHiw/5TwNZOw6mvFu2MQRKY3Rg2XO3AMIXHkUhiQ3ItnEweLC+t3bpmRLH
	C8sQ2u3UXqhhll3JIfLIjkp8mOQkcjrcqhWiNml9ecQsdt8KXncnHYg3OVG72EVqervIOmUOmQJWu
	NYk4BWRuBRGtRtK3O+aMuBLAv9kW53bFroxVGTknD212NNGpK+Nvt1wlmluw25D6pUOy753/cZHZG
	PFrIjuvgfpepkLJwMfmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSos-0000bq-B9; Wed, 03 Jun 2020 12:48:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSok-0000bB-Te
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 12:48:28 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46D3F20678;
 Wed,  3 Jun 2020 12:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591188506;
 bh=O5KqLd9hTdls9jl2OJi+asdG10tsNDS4tNPP+HUUh3Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L1SdGYJQSnJxgsAOqfgNS6TrrEdZMYptaXagfPGImrhqnGgWRprOeS9iRHm8G0OBB
 qp5WTczKg/HRwrBQwaRDMKWKO5PPEPWWdqIYGoEsuazZtzbjSG6xEOU43JKtekMFJv
 3TCK1an2KRglJB28yJhKnMMbquPREvaF6X2BgkcU=
Received: by pali.im (Postfix)
 id 10190F09; Wed,  3 Jun 2020 14:48:23 +0200 (CEST)
Date: Wed, 3 Jun 2020 14:48:23 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200603124823.5zgu4nncgzmeembn@pali>
References: <20200520123305.30994-1-pali@kernel.org>
 <20200603113001.GA9798@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603113001.GA9798@meh.true.cz>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_054826_975934_AF080C41 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: Re: [OpenWrt-Devel] [PATCH iwinfo] iwinfo: add device id for
 Marvell 88W8997 SDIO wifi card
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkbmVzZGF5IDAzIEp1bmUgMjAyMCAxMzozMDowMSBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+
IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+IFsyMDIwLTA1LTIwIDE0OjMzOjA1XToKPiAK
PiBIaSwgcGxlYXNlIG5leHQgdGltZSBkb24ndCBmb3JnZXQgdG8gYWRkIGNvbW1pdCBkZXNjcmlw
dGlvbiBhcyBpdCdzIG1hbmRhdG9yeS4gVGhhbmtzLgoKSGVsbG8gUGV0ciwgdGhhbmsgeW91IGZv
ciB0YWtpbmcgdGhlc2UgcGF0Y2hlcyEKCldoYXQgZG8geW91IHN1Z2dlc3QgdG8gcHV0IGludG8g
Y29tbWl0IGRlc2NyaXB0aW9uIG9mIHN1Y2ggc21hbGwgY2hhbmdlCndoZXJlIGNvbW1pdCB0aXRs
ZSBhbHJlYWR5IGNvbnRhaW5zIGRlc2NyaXB0aW9uIG9mIHRoZSB3aG9sZSBjaGFuZ2U/Cgo+ID4g
U2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4g
IGhhcmR3YXJlLnR4dCB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvaGFyZHdhcmUudHh0IGIvaGFyZHdhcmUudHh0Cj4gPiBpbmRl
eCAwN2Y2MWI3Li42NGFiNzA4IDEwMDY0NAo+ID4gLS0tIGEvaGFyZHdhcmUudHh0Cj4gPiArKysg
Yi9oYXJkd2FyZS50eHQKPiA+IEBAIC0xNzQsNiArMTc0LDcgQEAKPiA+ICAweDExYWIgMHgyYTU1
IDB4MTFhYiAweDAwMDAgICAgMCAgICAgIDAgICJNYXJ2ZWxsIiAgIjg4Vzg4NjQiCj4gPiAgMHgw
MmRmIDB4OTEzNSAweDAwMDAgMHgwMDAwICAgIDAgICAgICAwICAiTWFydmVsbCIgICI4OFc4ODg3
Igo+ID4gIDB4MTFhYiAweDJiNDAgMHgxMWFiIDB4MDAwMCAgICAwICAgICAgMCAgIk1hcnZlbGwi
ICAiODhXODk2NCIKPiA+ICsweDAyZGYgMHg5MTQxIDB4MDAwMCAweDAwMDAgICAgMCAgICAgIDAg
ICJNYXJ2ZWxsIiAgIjg4Vzg5OTciCj4gPiAgMHgxNGMzIDB4NzYwMyAweDE0YzMgMHg3NjAzICAg
IDAgICAgICAwICAiTWVkaWFUZWsiICJNVDc2MDNFIgo+ID4gIDB4MTRjMyAweDc2MTAgMHgxNGMz
IDB4NzYxMCAgICAwICAgICAgMCAgIk1lZGlhVGVrIiAiTVQ3NjEwRSIKPiA+ICAweDE0YzMgMHg3
NjEyIDB4MTRjMyAweDc2MTIgICAgMCAgICAgIDAgICJNZWRpYVRlayIgIk1UNzYxMkUiCj4gPiAt
LSAKPiA+IDIuMjAuMQo+ID4gCj4gPiAKPiAKPiAtLSAKPiB5bmV6egoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
