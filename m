Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4673A12BEC5
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 20:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lDuHd/FyH8+bKLBoMCxnhRTkp31CysgVF4YsY2drSQc=; b=l+v7EBAj4G60rAZ/YKkYj5qnq
	sd6qRgrh+gI2CEziEbaQH/PJSYV5r/JQcglTGZswcqcYbOGWwLeti+Rml6I45sCeq248qNNvooyOu
	ATTHqg6dKSivb2PNkGogIJj9kpRAYthiF2Me1aT5njRVcbLlUEodENepS3N6ZSe4zyc/ca+L4lM2A
	McD99tHRXRD9gbPhBYu4Jk85P/5cWlUWt/0b5aoZj2mTKvNPEUtPPEeGpl44X/fD79gHZjxcRntBF
	GZA5AruR+H+if2E2s4SPBP5mBTjyIePdi4W5/d14tArREtZpQ5Fsh8rzrNzuuzWjaFXZcEC3jbzv7
	yPZSm7rJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilIAc-0000eD-Tg; Sat, 28 Dec 2019 19:54:42 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilIAR-0000br-AV
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 19:54:34 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 75127FA6E3; Sat, 28 Dec 2019 20:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577562860;
 bh=qNmt07YcavHN1U+aGAhcwASnng9O7vTClj8BHAD8sUM=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=H3eSPr352+z5nkpLSJS+Is78z/hxcDaEYbovcSYRt5iysopRFxJHkZzECSht8qXey
 La7BYM154lT34LUm53IB2zfk71IPBX+KI04Bnrc2sNpddfz0dvqUgeHcLs73xXG+8i
 zhKJQLt9YHu+Y4fNlr6n3jbImV7zIAYbtl5Uzkx8=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 44A09FA6DE;
 Sat, 28 Dec 2019 20:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577562859;
 bh=qNmt07YcavHN1U+aGAhcwASnng9O7vTClj8BHAD8sUM=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=HwveBMPXsNt4473OdOd9x4/1MwcBz+/Ah5ftLB5ymjQbuhPkjg+w8uYsIW1t2++fn
 GRh8AzKWcipA9hF6KLQc6Wmllc1Z6Zj3hRU1kCJhwRL4vggXUBlCNKIUl/IgvrwUYo
 eyr9qjmqR5kIsXk0s8PniFzKCB4wXD2K1was9LLM=
Date: Sat, 28 Dec 2019 20:54:18 +0100
From: Stijn Segers <foss@volatilesystems.org>
To: mail@adrianschmutzler.de
Message-Id: <1577562858.24588.0@mail.volatilesystems.org>
In-Reply-To: <03d001d5bcec$aa805ae0$ff8110a0$@adrianschmutzler.de>
References: <20191225143851.12368-1-foss@volatilesystems.org>
 <00ce01d5bc41$d1e99520$75bcbf60$@adrianschmutzler.de>
 <9339FD6D-FDED-4104-A6A4-9BE03124F192@volatilesystems.org>
 <03d001d5bcec$aa805ae0$ff8110a0$@adrianschmutzler.de>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_115431_509835_5E95771F 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] [19.07] ramips: rename DIR-860L entries
 according to the new manufacturer / device spec
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

CgpPcCB2cmlqZGFnIDI3IGRlY2VtYmVyIDIwMTkgb20gMjA6MzQgc2NocmVlZiBtYWlsQGFkcmlh
bnNjaG11dHpsZXIuZGU6Cj4gSGksCj4gCj4+ICA+PiBNYXN0ZXIgaGFkIHRoaXMgdXBkYXRlZCBh
IHdoaWxlIGFnbywgaXQncyBva2F5IHRoZXJlLgo+PiAgPgo+PiAgPlRob3VnaCBJJ20gYSBiaWcg
ZmFuIG9mIHVuaWZpY2F0aW9uIGFuZCBtYWRlIGFuIGVmZm9ydCB0byBoYXZlIHRoaXMKPj4gID5z
b3J0ZWQgb3V0IGluIG1hc3RlciwgSSBkbyBub3QgdGhpbmsgYmFja3BvcnRpbmcgdGhvc2UgZGV2
aWNlIG5hbWUKPj4gID5jaGFuZ2VzIGlzIHZlcnkgaGVscGZ1bC4gVGhpcyB3aWxsIGNyZWF0ZSBh
ZGRpdGlvbmFsIHdvcmssIGJ1dAo+PiAgPmVmZmVjdGl2ZWx5IGl0IHdpbGwganVzdCBtb3ZlIHRo
ZSAiYnJlYWsiIGZyb20gMTkuMDcvbWFzdGVyIHRvCj4+ICA+MTguMDYvMTkuMDcuCj4+ICA+Cj4+
ICA+QXMgYSBjb3NtZXRpYyBpc3N1ZSwgaXQgd291bGRuJ3QgYmUgYSBjYW5kaWRhdGUgZm9yIGJh
Y2twb3J0aW5nIAo+PiB1bmRlcgo+PiAgPm5vcm1hbCBjaXJjdW1zdGFuY2VzLCB0b28uCj4+IAo+
PiAgV2VsbCBpdCB3YXMgd29ydGggdHJ5aW5nIPCfmIEKPj4gCj4+ICBTdGlqbgo+IAo+IFNvbWVi
b2R5IG1hcmtlZCBpdCBhcyAiQWNjZXB0ZWQiIGluIHBhdGNod29yay4gU28sIGVpdGhlciB0aGF0
IHdhcyBhIAo+IG1pc3Rha2UsIG9yIHlvdSBhcmUgbHVja3kgYW5kIGFub3RoZXIgY29tbWl0dGVy
IGhhZCBhIGRpZmZlcmVudCAKPiBvcGluaW9uIG9uIHRoaXMuIExldCdzIHNlZSAuLi4KPiAKPiBC
ZXN0Cj4gCj4gQWRyaWFuCgpIaSBBZHJpYW4sCgpJIGdvdCBzdWNoIGEgbWVzc2FnZSwgeWVzLCBi
dXQgSSBhc3N1bWUgaXQncyBhIG1peHVwIHNvbWV3aGVyZS4gSSAKaGF2ZW4ndCBzZWVuIGl0IGlu
IGFueW9uZSdzIHRyZWUuCgpDaGVlcnMgKGFuZCBoYXBweSBob2xpZGF5cykKClN0aWpuCgoKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
