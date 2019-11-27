Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F52810AEA4
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 12:26:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=edo+vP9xW12Ksy0Cicxw3wuzZYUwIL4rE6dWnECna+E=; b=Cetxw3t817UiZdMgFJMmTCVJs
	1vrh7XUU0o8To2FbBt4AxqSEnmO0AXsJJi9Za1n4yh7pDRcl7QrltdfkYIBP6lXbr7llbj20EKtOk
	gDRtBYc93rPxcFKN9Du7Yz+LcZxO/teHLY4eN2tGZfakbKQaAb0JlwVk+Luui1SULith0og3B1g0s
	ndzfPMNgxdfmAAG/mEmJqZfrAlQV/3+EIUrpwvxI9Evw20g6lYqs2YE8Tu4aGtyLC+gx1lA0VvQUs
	d9shM06bwpmZdgs3tGF9sXzJWTLFgOd3VOyONAMnLUchILeo4cz/06h094g64qHo4Aho1XxOgcfdz
	XksFvEdtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvT8-0000c6-MA; Wed, 27 Nov 2019 11:26:50 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvT1-0000bU-8H
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 11:26:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so1148477wma.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 03:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eiIiF3kO6ktVswPFwvtSDbJuW8LIu39DKLPZFSz+Eg0=;
 b=SMQZiUco7gpBOR188302PQrmsdf/BcMxONLwW/SCOybwflB0Lgub4Y8qrk80dBai3e
 MP5/vOobHGaoBp1MGBMwk8zRtj4pg5ykKLh3EEMFegXyvVkcrpcqw6j102u3+m43Xmus
 uOT+jiA3WKYc2ZVi5k2Rh4WRWIEYSKJ91ofuiwijgOJ9N/PYyhS5m/8E4xza7RmVE7pU
 c0egMuQ79bmiBDhDEX3I7+BQA+jwbGidEM6RHM1LUPOKYtkVQVCmLvnuDxf9kSx2BA7X
 ZjsjSJXLIozf66nQgo8eVpyFO7s88O9+splsLqHEpOBt/scz863AhV4W0SYV3lrSjdaF
 24Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eiIiF3kO6ktVswPFwvtSDbJuW8LIu39DKLPZFSz+Eg0=;
 b=UgmFSLfABhz0LEOciqP2cY0b+uRDTDiHt2VNs0mASR9c9qH+0ZuflhNMSK8p8MUQ9l
 4XnMFEwWRa3xZJzCxnDVUwNMnKfCU86EsyDKK0sxh1pdhZLyfSueeuq/19EbxeC2+5tk
 geF7WoUf4ws+K3vt8QFko8+9KYAsTZFDYiR8cru6Z/wr8YpdGaldBpm1E6boTQLXM6YT
 LAWw2BYVvIOoQ0i/IekNkh/HmDLbeq8sSw0v9wf2n7tKN8dvdKNTH72nVWaBS5mBPn2c
 lgTHZhptSqhsY2oaTdYceW7c14NofmM+1xqg0mwGJFtn4BR6Wk30jlNeD80PMfR8bXnp
 XnfA==
X-Gm-Message-State: APjAAAVU8vmkq5PCCOfa3xvysH1lk8OB1ZNeZqQDHELNqYYRn1dqq3cu
 yARiVx3Wl7onfQpV4YvPmvvLgehs
X-Google-Smtp-Source: APXvYqyZG8GondlC6zjZJwfMnufcEP0MPY/3f/HiWNErdIwewlyyBHvXfTku3CQWL0eXheBzUJpZXQ==
X-Received: by 2002:a1c:152:: with SMTP id 79mr3763879wmb.70.1574854000864;
 Wed, 27 Nov 2019 03:26:40 -0800 (PST)
Received: from mamamia.internal (a89-183-60-41.net-htp.de. [89.183.60.41])
 by smtp.gmail.com with ESMTPSA id f1sm17879836wru.6.2019.11.27.03.26.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Nov 2019 03:26:40 -0800 (PST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Rosen Penev <rosenp@gmail.com>
References: <20191125224418.266082-1-rosenp@gmail.com>
 <20191127104917.GB37269@meh.true.cz>
From: Andre Heider <a.heider@gmail.com>
Message-ID: <8b1128c5-b171-afa1-4bac-c8e0aa9a7ece@gmail.com>
Date: Wed, 27 Nov 2019 12:26:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191127104917.GB37269@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_032643_321282_331FDAD0 
X-CRM114-Status: GOOD (  24.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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

T24gMjcvMTEvMjAxOSAxMTo0OSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBSb3NlbiBQZW5ldiA8
cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTktMTEtMjUgMTQ6NDQ6MThdOgo+IAo+IEhpLAo+IAo+IHlv
dSdyZSB0cnlpbmcgdG8gZG8gYSBsb3Qgb2YgdGhpbmdzIGluIG9uZSBwYXRjaCwgbWFraW5nIGl0
IGhhcmQgdG8gcmV2aWV3LAo+IHBsZWFzZSBzcGxpdCBpdCB1cC4KPiAKPiAxLiBzd2l0Y2ggdG8g
cGtnY29uZgo+IDIuIHNoZWxsIGNoZWNrIGZpeAo+IDMuIG1lc29uIGZpeAo+IAo+PiAtaWZlcSAo
JChIT1NUX09TKSxEYXJ3aW4pCj4+IC1IT1NUX0xERkxBR1MgKz0gLWZyYW1ld29yayBDb3JlRm91
bmRhdGlvbiAtZnJhbWV3b3JrIENhcmJvbgo+PiAtZW5kaWYKPiAKPiBTbyBpdCBjb21waWxlcyBh
bmQgd29ya3Mgb24gbWFjT1MganVzdCBmaW5lPyBZb3UgY2FuIGFzayBLZXZpbiAobGRpcikgb24g
SVJDCj4gdG8gYnVpbGQgdGVzdCB0aGlzIGZvciB5b3UuCj4gCj4+IGRpZmYgLS1naXQgYS90b29s
cy9wa2djb25mL2ZpbGVzL3BrZy1jb25maWcgYi90b29scy9wa2djb25mL2ZpbGVzL3BrZy1jb25m
aWcKPj4gbmV3IGZpbGUgbW9kZSAxMDA3NTUKPj4gaW5kZXggMDAwMDAwMDAwMC4uNjU3OWExNGY4
Ngo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL3Rvb2xzL3BrZ2NvbmYvZmlsZXMvcGtnLWNvbmZp
Zwo+IAo+IFdoYXQgaGFzIGhhcHBlbmVkIHdpdGggdGhlIG9sZCBwa2ctY29uZmlnPyBIYXZlIHlv
dSBmb3JnZXQgdG8gYGdpdCBtdi9naXQgYWRkYD8KPiAKPj4gQEAgLTAsMCArMSw2IEBACj4+ICsj
IS9iaW4vc2gKPj4gKwo+PiArIiQoZGlybmFtZSAiJDAiKS9wa2ctY29uZmlnLnJlYWwiIFwKPiAK
PiBUaGlzIGNoYW5nZSB3YXMgc3VnZ2VzdGVkIGJ5IHNoZWxsY2hlY2s/IFdoeSBpcyB0aGlzIGNo
YW5nZSBuZWVkZWQ/IFRoaXMgbmVlZHMKPiB0byBnbyBpbnRvIHNlcGFyYXRlIGNvbW1pdCB3aXRo
IGEgcHJvcGVyIGRlc2NyaXB0aW9uLgo+IAo+PiBkaWZmIC0tZ2l0IGEvdG9vbHMvcGtnY29uZi9w
YXRjaGVzLzAwMDEtZi1wa2djb25mLW1lc29uLnBhdGNoIGIvdG9vbHMvcGtnY29uZi9wYXRjaGVz
LzAwMDEtZi1wa2djb25mLW1lc29uLnBhdGNoCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGlu
ZGV4IDAwMDAwMDAwMDAuLjNlZDQ3YWRjOTUKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi90b29s
cy9wa2djb25mL3BhdGNoZXMvMDAwMS1mLXBrZ2NvbmYtbWVzb24ucGF0Y2gKPj4gQEAgLTAsMCAr
MSwzMSBAQAo+PiArRnJvbSAwNWVmNTg1MzJiNzVjMzZmYzE5ZWI5ZDJkMWZlNGM0NjE5NTcwNmJm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+PiArRnJvbTogQW5kcmUgSGVpZGVyIDxhLmhlaWRl
ckBnbWFpbC5jb20+Cj4+ICtEYXRlOiBNb24sIDI1IE5vdiAyMDE5IDA5OjM2OjQ3ICswMTAwCj4+
ICtTdWJqZWN0OiBbUEFUQ0hdIGYgcGtnY29uZi9tZXNvbgo+IAo+IFRoaXMgcGF0Y2ggbmVlZHMg
YSBiZXR0ZXIgbmFtZSBhbmQgYmV0dGVyIGV4cGxhbmF0aW9uLCBkZXNjcmlwdGlvbi4gVGhpcyBp
cwo+IHNvbWUgdXBzdHJlYW0gYmFja3BvcnQgb3Igd2hhdHMgdGhlIG9yaWdpbiBvZiB0aGlzIHBh
dGNoPwoKVGhhdCB3YXMganVzdCBhIHF1aWNrICYgZGlydHkgcGF0Y2ggZnJvbSBtZSB0byBnZXQg
aXQgd29ya2luZywgdGhhdCdzIAp3aHkgaXQgbGFja3MgYW55IHNvcnQgb2YgZXhwbGFuYXRpb24g
OykKCklmIEkgcmVhZCB0aGF0IHJpZ2h0IFJvc2VuIGFjY2lkZW50YWxseSBhZGRlZCBteSBvcGVu
d3J0IHBhdGNoIHRvIHRoZSAKcGF0Y2hlcy8gZm9sZGVyLCBhbmQgbm90IHRoZSBwa2djb25mIHBh
dGNoIHdpdGhpbiA7KSBUaGUgImYiIGF0IHRoZSAKc3RhcnQgdHJpZWQgdG8gaW1wbHkgdGhhdCBp
dCBzaG91bGQgYmUgImZpeHVwIidlZCBvbiByZWJhc2UsIGJ1dCB0aGF0IApvYnZpb3VzbHkgZGlk
bid0IHdvcmsgb3V0IDpECgo+IAo+PiArLS0tCj4+ICsgdG9vbHMvcGtnY29uZi9wYXRjaGVzL21l
c29uLnBhdGNoIHwgMTIgKysrKysrKysrKysrCj4+ICsgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKykKPj4gKyBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvcGtnY29uZi9wYXRjaGVzL21l
c29uLnBhdGNoCj4+ICsKPj4gK2RpZmYgLS1naXQgYS90b29scy9wa2djb25mL3BhdGNoZXMvbWVz
b24ucGF0Y2ggYi90b29scy9wa2djb25mL3BhdGNoZXMvbWVzb24ucGF0Y2gKPj4gK25ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4+ICtpbmRleCAwMDAwMDAwMDAwLi5lMGEyOTQ2ZjMyCj4+ICstLS0gL2Rl
di9udWxsCj4+ICsrKysgYi90b29scy9wa2djb25mL3BhdGNoZXMvbWVzb24ucGF0Y2gKPj4gK0BA
IC0wLDAgKzEsMTIgQEAKPj4gKytkaWZmIC11ciBwa2djb25mLTEuNi4zLW9yaWcvY2xpL21haW4u
YyBwa2djb25mLTEuNi4zL2NsaS9tYWluLmMKPj4gKystLS0gcGtnY29uZi0xLjYuMy1vcmlnL2Ns
aS9tYWluLmMJMjAxOS0wNy0xMiAxMzo1MzoxMi4wMDAwMDAwMDAgKzAyMDAKPj4gKysrKysgcGtn
Y29uZi0xLjYuMy9jbGkvbWFpbi5jCTIwMTktMTEtMjUgMDk6MzI6NTMuNTEyNzg0NDc5ICswMTAw
Cj4+ICsrQEAgLTEwMDIsNyArMTAwMiw3IEBACj4+ICsrCj4+ICsrIAlpZiAoKHdhbnRfZmxhZ3Mg
JiBQS0dfVkVSU0lPTikgPT0gUEtHX1ZFUlNJT04pCj4+ICsrIAl7Cj4+ICsrLQkJaWYgKGFyZ2Mg
PiAyKQo+PiArKysJCWlmICgwICYmIGFyZ2MgPiAyKQo+IAo+IFVoPwo+IAo+IEl0J3MganVzdCBt
ZSBvciB0aGlzIHNlZW1zIGxpa2UgYSBoYWNrLCBzb21ldGhpbmcgd2hpY2ggc2hvdWxkIGJlIGZp
eGVkIGluCj4gbWVzb24gaW5zdGVhZD8gSSB3b3VsZCBwcmVmZXIgdG8gaGF2ZSBhIHBhdGNoIHdo
aWNoIGlzIGFjY2VwdGVkIHVwc3RyZWFtLgo+IHBrZ2NvbmYgaXMgbWFpbnRhaW5lZCwgcmlnaHQ/
CgpXaGF0IG9wZW53cnQgZG9lcyBpdCB3cmFwIHBrZy1jb25maWcvcGtnY29uZiBpbiBhIHNoZWxs
IHNjcmlwdCB0byBhZGQgCmFkZGl0aW9uYWwgYXJndW1lbnRzIGZvciBjcm9zcyBjb21waWxpbmcg
KHRob3NlIC0tZGVmaW5lLXZhcmlhYmxlIAphYm92ZSkuIFRoYXQgd3JhcHBlciBpcyB0aGVuIHBh
c3NlZCB0byBidWlsZCBzeXN0ZW1zIGFzIHBrZy1jb25maWcuCgpOb3cgbWVzb24gcHJvYmVzIHBr
Zy1jb25maWcgd2l0aCB0aGUgLS12ZXJzaW9uIGFyZ3VtZW50IHRvIHNlZSBpZiBpdCdzIGEgCndv
cmtpbmcgYmluYXJ5IG9yIHdoYXRldmVyLiBwa2djb25mIHRoZW4gc2VlcyAtLXZlcnNpb24gd2l0
aCBhZGRpdGlvbmFsIAphcmd1bWVudHMgYW5kIGRlY2lkZXMgdG8gYmUgInNtYXJ0IiBhbmQgZG9l
cyBzb21ldGhpbmcgY29tcGxldGVseSAKZGlmZmVyZW50IHRoYW4ganVzdCBwcmludGluZyBpdHMg
dmVyc2lvbi4gVGhhdCBpbiByZXR1cm4gZXJyb3JzIG91dCwgCm1lc29uIHRoaW5rcyBwa2ctY29u
ZmlnIGlzIHVudXNhYmxlIGFuZCB0aGUgd2hvbGUgYnVpbGQgZmFpbHMuCgpUaGUgcGF0Y2ggZ2V0
cyByaWQgb2YgdGhhdCAic21hcnQiIHBhcnQsIHdoaWNoIG1ha2VzIG1lc29uIGFuZCB0aGUgCndy
YXBwZWQgcGtnY29uZiBwbGF5IHRvZ2V0aGVyLgoKVGhlIG9yaWdpbmFsIHBrZy1jb25maWcgZG9l
c24ndCBoYXZlIHRoaXMgaXNzdWUuCgpUaGVyZSdzIGEgYnVnIHJlcG9ydCBoZXJlOgpodHRwczov
L3RvZG8uc3IuaHQvfmthbmlpbmkvcGtnY29uZi82CgpJIGRpZG4ndCBwdXJzdWUgdXBzdHJlYW1p
bmcgaXQgYmVjYXVzZSBpdCBsb29rcyBsaWtlIG1lcmdlIHJlcXVlc3QgYXQgCmdpdGh1YiBhcmUg
aWdub3JlZCBhbmQgSSBkaWRuJ3QgZmVlbCBsaWtlIHNpZ25pbmcgdXAgYXQgdXBzdHJlYW1zIG93
biBwYWdlLgoKSG9wZSB0aGF0IGhlbHBzLApBbmRyZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
