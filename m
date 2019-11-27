Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0145C10AFE2
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 14:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4wGVFhJxenaYom9OvTDaEdH90hMEXEtBTJtjTzRXLo=; b=AFfxv67bBxHEdH
	VP92ZDOnRP+XFxEiljhE8HsMtM6lR1UAQDY49eHdGDPUmELpwovVohHP42PpCCtHezYcCzKl7nBIr
	hg/h2fzNOccLKZC/Ijpuz6yXRUUC8M5zL6j4fUzj2of8Kf72flk/j4AHhA5lkA7XBehkmdTW4C6ZH
	lnNZAutTD6GEwaRFOwMK29nLAoPgq/Kl4ZJ6imPJpPRROw26plbbY9McwYSn7Maqg8TSjbDYGe/eg
	caUIdz1j+DRfXQdpplubqqQnE0lVqwMkqiQCYTJ5EdsI3PJ68ugv9esQYyn50JimHOiiaQiSf7eqw
	UdI3dOhruQu78LJYe33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZwzL-0002mS-3t; Wed, 27 Nov 2019 13:04:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZwzA-0002m2-13
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 13:04:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id j42so738116wrj.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 05:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MOCD+1AvXqiPLipR1aCbl1GtQ2sV+I412dgiXGdW7cA=;
 b=TFRBEKqKK7jcLkUi5pMVe891uHCrL/5THNr2maLalMR3tNFMA9alMEpXfwGRNRr1kV
 Ll34DcNZA1BroEiJyT72ifDLlDFyS29qxKoXgslLdXKOuifB1atqNbpVftaVQ4fEx8i0
 0/7NDEhAzgk0XGqPbpGmDI54A9/9BALhjbdpz5ft1oYMkjU5R6xf5xxPB9/vNVgNxyae
 PGK3RODNrAggCkIor/dT4FTr3qODahE7ZtfoGuU6Rdu4cA2cUjcHfXlPrrCW+AcgmjFN
 e+QkADl+es41ybwRIc+Ec60EWgJJzaBzZcY8cyY2OUufBvCkmAVkIDBb/hbu8HYjE+5x
 vy5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MOCD+1AvXqiPLipR1aCbl1GtQ2sV+I412dgiXGdW7cA=;
 b=O1D4Av+huE8MeFmTWaDGkMpAKNIIw71hD0hFvQYJfOjq/3PcHoDD7kUVXriSvgAK6A
 NjHcX++AJzklFnsehu3xGcCSCzM6MwFmvHlfhY9LLWyIz4pMQdS6tE+TJmZfhLjO0pwG
 1XD8GZOSNdZlqLJEkHoLn5hmSli8Eh1sdAG2hw6+Y41lgH86g+/6ZIbcjsQsXPHpnJGc
 C3eiXCHX6B05eGd+9g1ncFdDMeLBUowN1tNXOTVeW/osmFIZX4SUl9aHy5Od2oTV9xTG
 CcbT1iNHgQUQUlNL2NERoYZBNkhzIMSRlm5Jl2RpnHiypDunWojbkluW6V6vIFnlEof/
 Vrng==
X-Gm-Message-State: APjAAAXy6XPgfmpvQgkCYYH+1YidpaUiZiSeQZnxqESerMQc28slmpds
 +waELGKpT3tulmkTotiC7A4tA9jkVtntDS6qt5o=
X-Google-Smtp-Source: APXvYqzhZcnv1u3wfzH8+tqTNpjqX6zne+Gi0KZytEnfZUyRStOMX7o+9kU2ReTCGBapmOdPYwcToHHXeacWeOykKFM=
X-Received: by 2002:adf:ea92:: with SMTP id s18mr40827070wrm.327.1574859835867; 
 Wed, 27 Nov 2019 05:03:55 -0800 (PST)
MIME-Version: 1.0
References: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191127085045.GA37269@meh.true.cz>
 <20191127103510.GD25745@shell.armlinux.org.uk>
 <20191127115735.GC37269@meh.true.cz>
 <20191127121421.GE25745@shell.armlinux.org.uk>
In-Reply-To: <20191127121421.GE25745@shell.armlinux.org.uk>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 27 Nov 2019 14:03:40 +0100
Message-ID: <CAOiHx=moeDKc+_23H1L+pGrGHqGtbYwi9++_55sQvKGfxqCtww@mail.gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_050400_076381_C328EC05 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCAyNyBOb3YgMjAxOSBhdCAxMzoxNCwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFk
bWluCjxsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+Cj4gT24gV2VkLCBOb3YgMjcsIDIw
MTkgYXQgMTI6NTc6MzVQTSArMDEwMCwgUGV0ciDFoHRldGlhciB3cm90ZToKPiA+IFJ1c3NlbGwg
S2luZyAtIEFSTSBMaW51eCBhZG1pbiA8bGludXhAYXJtbGludXgub3JnLnVrPiBbMjAxOS0xMS0y
NyAxMDozNToxMF06Cj4gPgo+ID4gPiBJdCBtYWtlcyBpdCB2ZXJ5IGRpZmZpY3VsdCB0byB1bmRl
cnN0YW5kLiAgRm9yIGV4YW1wbGUsIHdoZXJlIGlzIHRoZQo+ID4gPiBrZXJuZWwgKyBrbW9kIHBh
Y2thZ2UgdmVyc2lvbi9yZWxlYXNlIHNldAo+ID4KPiA+IGZyb20ga21vZC1saWJwaHlfNC4xOS44
NS0xX2FhcmNoNjRfY29ydGV4LWE1My5pcGsvY29udHJvbC50YXIuZ3ovY29udHJvbDoKPiA+Cj4g
PiAgUGFja2FnZToga21vZC1saWJwaHkKPiA+ICBWZXJzaW9uOiA0LjE5Ljg1LTEKPiA+ICBEZXBl
bmRzOiBrZXJuZWwgKD00LjE5Ljg1LTEtZjI0ZTMwMWJlODhlYjkyMTUyM2QwZWIyNjAxMmVjMGYp
Cj4gPgo+ID4gSSdtIGludGVyZXN0ZWQgaG93IHRoZSBWZXJzaW9uOiBpcyBzZXQ6Cj4gPgo+ID4g
ICQgZ2l0IGdyZXAgVmVyc2lvbjogaW5jbHVkZS8KPiA+ICBpbmNsdWRlL3BhY2thZ2UtZHVtcGlu
Zm8ubWs6KVZlcnNpb246ICQoVkVSU0lPTikKPiA+Cj4gPiBTbyB0aGVuIEkgbmVlZCB0byBrbm93
IGhvdyB0aGUgVkVSU0lPTiBpcyBzZXQ6Cj4gPgo+ID4gICQgZ2l0IGdyZXAgVkVSU0lPTi4qOi4q
PSBpbmNsdWRlL2tlcm5lbCoKPiA+ICBpbmNsdWRlL2tlcm5lbC5tazogICAgVkVSU0lPTjo9JChM
SU5VWF9WRVJTSU9OKSQoaWYgJChQS0dfVkVSU0lPTiksKyQoUEtHX1ZFUlNJT04pKS0kKGlmICQo
UEtHX1JFTEVBU0UpLCQoUEtHX1JFTEVBU0UpLCQoTElOVVhfUkVMRUFTRSkpCj4gPgo+ID4gU28g
ZnJvbSBhYm92ZSBpdCdzIFBLR19SRUxFQVNFIG9yIExJTlVYX1JFTEVBU0Ugbm93Ogo+ID4KPiA+
ICAkIGdpdCBncmVwIC1FICcoUEtHX1JFTEVBU0V8TElOVVhfUkVMRUFTRSknIGluY2x1ZGUva2Vy
bmVsKgo+ID4gIGluY2x1ZGUva2VybmVsLXZlcnNpb24ubWs6TElOVVhfUkVMRUFTRT89MQo+ID4K
PiA+IFNvIGluIG9yZGVyIHRvIGJ1bXAgdGhlIHJlbGVhc2UgaW4gdGhlIDQuMTkuODUtMSBmcm9t
IDEgdG8gMiBJIHdvdWxkIHByb2JhYmx5Cj4gPiBuZWVkIHRvIHNldCBMSU5VWF9SRUxFQVNFOj0y
IHNvbWV3aGVyZSBpbiB0aGUgTWFrZSBmaWxlcyBvciBwcm92aWRlIGl0IHRvIE1ha2UKPiA+IHZp
YSBjb21tYW5kbGluZSwgYXMgYG1ha2UgLi4uIExJTlVYX1JFTEVBU0U9MmAuCj4KPiBUaGFua3Ms
IHRoYXQncyB1c2VmdWwgaW5mb3JtYXRpb24uCgpUbyBhZGQgdG8gdGhpcywgdGhlIGYyNGUzMDFi
ZTg4ZWI5MjE1MjNkMGViMjYwMTJlYzBmIHBhcnQgaXMgdGhlIGhhc2gKb2YgdGhlIGtlcm5lbCBj
b25maWcgdXNlZCBkdXJpbmcgdGhlIGJ1aWxkIG9mIHRoZSBtb2R1bGUva2VybmVsLiBUaGlzCmlz
IHRvIGF2b2lkIGluc3RhbGxpbmcga2VybmVsIG1vZHVsZXMgYnVpbGQgd2l0aCBhIGRpZmZlcmVu
dCBBQkkgZHVlCnRvIGRpZmZlcmVudCBjb25maWcuCgpTZWUgaHR0cHM6Ly9naXRodWIuY29tL29w
ZW53cnQvb3BlbndydC9ibG9iL21hc3Rlci9pbmNsdWRlL2tlcm5lbC1kZWZhdWx0cy5tayNMMTA4
CmZvciBob3cgaXQncyBnZW5lcmF0ZWQuCgo+ID4gPiA+IEFGQUlLIEpvbmFzIHBsYW5zIHRvIGJv
cnJvdyBmZXcgU0ZQIG1vZHVsZXMgYW5kIHRlc3QgdGhpcyBvbiBoaXMgQ2xlYXJGb2cgUFJPCj4g
PiA+ID4gYW5kIGhlIGlzIGV2ZW50dWFsbHkgZ29pbmcgdG8gbWVyZ2UgdGhpcyBhcyB3ZWxsLgo+
ID4gPgo+ID4gPiBTdXJlbHkgb25seSBvbmUgcGVyc29uIHNob3VsZCBiZSBtZXJnaW5nIHRoaXM/
Cj4gPgo+ID4gSSdtIG5vdCBpbXBseWluZyB0aGF0LCBidXQgSm9uYXMgaXMgYWxyZWFkeSBpbnZv
bHZlZCBhbmQgaGFzIGFjY2VzcyB0byB0aGUKPiA+IGFjdHVhbCBoYXJkd2FyZSwgc28gaXQgbWFr
ZXMgc2Vuc2UgdG8gbGV0IGhpbSB0ZXN0IGFuZCBtZXJnZSBpdC4KPgo+IEhtbSwgc28geW91J3Jl
IHNheWluZyB0aGF0IHRoZSBtYWlubGluZSBrZXJuZWwgbWFpbnRhaW5lciAobWUpCj4gc2hvdWxk
bid0IGJlIHB1c2hpbmcgdGhlc2UgcGF0Y2hlcyBmb3IgT3BlbldydCwgYmVjYXVzZSB5b3UgZG9u
J3QKPiB0cnVzdCBtZSB0byB0ZXN0IHRoZW0sIGRlc3BpdGUgdGVzdGluZyB0aGVtIG9uIHRoZSB1
RFBVLCBTb2xpZFJ1bgo+IENsZWFyZm9nIGFuZCBjZXg3IHBsYXRmb3JtcyB3aXRoIG11bHRpcGxl
IGRpZmZlcmVudCBTRlAgYW5kIFNGUCsKPiBtb2R1bGVzIGZyb20gc2V2ZXJhbCB2ZW5kb3JzLgo+
Cj4gSW5zdGVhZCB5b3UnZCByYXRoZXIgdHJ1c3Qgc29tZW9uZSB3aXRoIG9ubHkgb25lIFNGUCBt
b2R1bGUsIHdobydzCj4gcGF0Y2ggdGhhdCB3YXMgbWVyZ2VkIGludG8gT3BlbldydCB3aWxsIGJy
ZWFrIHNvbWUgbW9kdWxlcyB0aGF0Cj4gaGF2ZSBiZWVuIHRlc3RlZCB0byB3b3JrIHdpdGggdGhl
IHVwc3RyZWFtIGtlcm5lbD8KPgo+IFNvdW5kIHNhbmU/Cj4KPiBJIHRoaW5rIHlvdSdyZSBhY3R1
YWxseSBjb25mdXNlZCBhYm91dCB3aGF0IEkndmUgYXNrZWQgSm9uYXMgdG8gZG8uCj4gSSBoYXZl
bid0IGFza2VkIGhpbSB0byB0ZXN0IHRoZXNlIHBhdGNoZXMgd2l0aCBhIHZpZXcgdG8gbWVyZ2lu
Zwo+IHRoZW0sIEkndmUgYXNrZWQgaGltIHRvIHJlcG9ydCBiYWNrIHdoYXQgdGhlIHNpdHVhdGlv
biBpcyB3aXRoIHRoaXMKPiBwYXRjaCBzZXQgd2l0aG91dCBoaXMgIjQ1MC1yZXByb2JlX3NmcF9w
aHkiIHBhdGNoIGFwcGxpZWQsIHdoaWNoCj4gbmV2ZXIgbWFkZSBpdCBpbnRvIHRoZSB1cHN0cmVh
bSBrZXJuZWwgLSBhbmQgdGhlbiB3ZSdsbCB3b3JrIG9uIGEKPiB3YXkgdG8gbWFrZSBoaXMgbW9k
dWxlIHdvcmsgd2l0aCAqYm90aCogT3BlbldydCBhbmQgdGhlIG1haW5saW5lCj4ga2VybmVsLgoK
VGhlIGJpdCB5b3UgYXJlIHByb2JhYmx5IG1pc3NpbmcgaXMgdGhhdCBJIGFsc28gaGFwcGVuIHRv
IGJlIGFuCk9wZW5XcnQgbWFpbnRhaW5lciB3aXRoIGNvbW1pdCBhY2Nlc3MuCgpTbyB1bmxlc3Mg
eW91IGFsc28gaGF2ZSBjb21taXQgYWNjZXNzIHlvdXJzZWxmIHlvdSB3b3VsZCBuZWVkIHNvbWVv
bmUKZnJvbSB0aGUgbWFpbnRhaW5lciBncm91cCB0byBhY2NlcHQgYW5kIG1lcmdlIHlvdXIgcGF0
Y2hlcy4gQW5kIHNpbmNlCkkgaGF2ZSBhY2Nlc3MgdG8gYSBkZXZpY2Ugd2l0aCBhbiBTRlAgcG9y
dCwgSSBjYW4gZG8gYm90aCB0aGUgY2hlY2tzCnlvdSBhc2tlZCBtZSB0byBkbyBhcyB3ZWxsIGFz
IGRvIHRoZSBtZXJnZS4gVHdvIGJpcmRzIHdpdGggb25lIHN0b25lCjstKQoKQW5kIHNvbWV0aW1l
cyBjaGFuZ2VzIGNhbiBoYXZlIHVuZXhwZWN0ZWQgc2lkZSBlZmZlY3RzIGR1ZSB0byB0aGUKYW1v
dW50IG9mIGxvY2FsIHBhdGNoZXMgd2UgaGF2ZSBmb3IgZWFjaCB0YXJnZXQsIGFuZCBJIGRvbid0
IGV4cGVjdAphbnlvbmUgdG8gYmUgYXdhcmUgb2YgYWxsIG9mIHRoZW0sIG9yIGhhdmluZyB0ZXN0
ZWQgYWxsIG9mIHRoZW0uCgpJIGhvcGUgdGhhdCBjbGVhcnMgaXQgYSBiaXQgdXA/IE5vdGhpbmcg
YWJvdXQgbm90IHRydXN0aW5nIHlvdSBhbmQKeW91ciBjb2RlLCBqdXN0IG5vdCB0cnVzdGluZyBp
dCBibGluZGx5LiBFc3BlY2lhbGx5IHNpbmNlIHlvdQptZW50aW9uZWQgaGF2aW5nIGlzc3VlcyB3
aXRoIHRoZSBPcGVuV3J0IGJ1aWxkIHN5c3RlbS4KCgpCZXN0IHJlZ2FyZHMKSm9uYXMKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
