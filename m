Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87ED11054C
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 20:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XhJXMWvWxwbPfel4X0SaddKLHAjZo8Evl63cA2Iv/bo=; b=O8o6eNudOVdDjtpoRh/oLoT24
	3WgLzdFmVwh/LJsF7mzljoBlnvQxrWkfhJUJI7bi9x0UY0FMHFyx7oPdNsSJV0WraIAUMqw5qvv45
	m5OMAxlUngA26uWoiHFOJzVFl/M9G0Yej1MzWZ1zAFXk3B5Sp4gtGglME3PvEoVWmHW+LUpc1fAeh
	U2ungw02OFrnp2f/bqjymfX8QPyxTWjdP4zns93Eup6N+qx+1HXBEvFNGZxpnSPqstxB/oAdbjok1
	qa2CK/S8xxIQliV1IFIAWR5b+0t7cygXBpxcLtT+FH7IBQnxWGKtS9ZExkTnGve3q6Jlft8k6S7FE
	cclui5ljQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icE1H-0005Wi-Jb; Tue, 03 Dec 2019 19:39:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icE0z-0005WD-SK
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 19:39:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so4963866wma.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Dec 2019 11:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=PHNB+kRk2HLzuH0M49+dpNaobdKP3s+XBY/d5lzyp18=;
 b=BSdNqKh4oyeFXP6MjQT+j52EJvcsY3FF/t00xGVnTExEHqqlObCvjHqS7Z/Ws60aod
 hWxmuLMtU2REWtLu02BhyjEIAYS+F10Svwf9QZLVX7h2YKeSHP/yZcaXhXBcsMYdtGcQ
 nfAyxkc0sYbV9o2nYTjKvFUyLaar/uS6OyEQECbp7AXMsm3FDc0ns+XELpMnY8yHFyeR
 86c210Lc+HRgk81sAH/D6QB+F3Puc08E2+rrU0jfK7aztVzye/XLvIEjOMOLlo7L+8mb
 F0S2+Oywd0hUIllFH3n2vDhEUg/9/3jr+CRSK7h+jBjIwuIG0Q17u+kV/zssSJFmWKGw
 3eVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PHNB+kRk2HLzuH0M49+dpNaobdKP3s+XBY/d5lzyp18=;
 b=nGyNvD556xZIs5tIxkk2GTUxg5gaofjDHQAToHpAXtnvjbf1hYbB5lb1WJfdIjokbm
 yrJvZMCmyU3+cSZElEvgS7B9Psjlmgu8UNsKldWsC4kMVnUQGAI1n9nbkM03gVqpDsfm
 bjS4VFx6og2afYsBwDI4GmQ7f/BulZ6vahIoFIbjftHFZsZ0XX8oDzdyqEidpi2Mqg1Q
 vl90f9W9fbJPWKpbSMPhL6ERSydogOVFIBW6g22xv1fhrJ3hIGqavxD8oowZyZDM8Ohy
 iLpPMBySMjq+85moL7tMDRghYPMqdnfVXK3BB3IYP2o0f13i8yK5eDgk4waQDn64s7bT
 p+6w==
X-Gm-Message-State: APjAAAVUVW5bNBb1Rqaja9rcd4rBwoUzwqIJ/+mD0FSEeTLSNIsXDRi+
 r6yZdgraDcBfF15MAbWQ17UAw23Gs5I=
X-Google-Smtp-Source: APXvYqwIdMvVxd+mOCvBJhIS4pSw4ylE91VzX0ktIhHI3HLkx6wPQJIFPdrYF8BUHSUPX9iabg81hQ==
X-Received: by 2002:a1c:6086:: with SMTP id u128mr36691726wmb.29.1575401955667; 
 Tue, 03 Dec 2019 11:39:15 -0800 (PST)
Received: from [192.168.1.230] ([213.152.161.244])
 by smtp.gmail.com with ESMTPSA id x11sm5121570wre.68.2019.12.03.11.39.14
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Dec 2019 11:39:15 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
 <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
 <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <8030b4b1-5de5-db3d-c3b3-57a303fcfa2a@gmail.com>
Date: Tue, 3 Dec 2019 20:39:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_113917_917808_5EECFF65 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] The meaning of Signed-off-by for netifd [Was:
 Re: [PATCH netifd] interface: warn if ip6hint is truncated]
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

CgpPbiAwMy8xMi8xOSAxNTo1OSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8gSGFu
cywKPiAKPiBPbiAxMi8zLzE5IDg6NTAgQU0sIEhhbnMgRGVkZWNrZXIgd3JvdGU6Cj4+IE9uIEZy
aSwgTm92IDI5LCAyMDE5IGF0IDk6MjkgUE0gVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUt
a29lbmlnLm9yZz4gd3JvdGU6Cj4+Pgo+Pj4gT24gMTEvMjkvMTkgODo1MCBQTSwgSGFucyBEZWRl
Y2tlciB3cm90ZToKPj4+PiBPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCA3OjExIFBNIFV3ZSBLbGVp
bmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBXaGVu
IGZvciBleGFtcGxlIGEgLzYwIGlzIGFzc2lnbmVkIHRvIGEgbmV0d29yayB0aGUgbGFzdCA0IGJp
dHMgb2YgdGhlCj4+Pj4+IGlwNmhpbnQgYXJlIHVudXNlZC4gRW1pdCBhIHdhcm5pbmcgaWYgYW55
IG9mIHRoZXNlIHVudXNlZCBiaXRzIGlzIHNldCBhcwo+Pj4+PiBpdCBpbmRpY2F0ZXMgdGhhdCBz
b21lb25lIGRpZG4ndCB1bmRlcnN0YW5kIGhvdyB0aGUgaGludCBpcyB1c2VkLiAoQXMgSQo+Pj4+
PiBkaWQgZWFybGllciB0b2RheSByZXN1bHRpbmcgaW4gc3BlbmRpbmcgc29tZSB0aW1lIHVuZGVy
c3RhbmRpbmcgdGhlCj4+Pj4+IGNvZGUuKQo+Pj4+IFBhdGNoIGFwcGxpZWQgd2l0aCBzb21lIG1p
bm9yIHR3ZWFrcwo+Pj4+IChodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1wcm9qZWN0L25ldGlm
ZC5naXQ7YT1jb21taXQ7aD1lNDViMTQwODI4NGMwNTk4NGIzOGE5MTBhMWYwYTA3ZDZjNzYxMzk3
KTsKPj4+Cj4+PiBUaGUgdXBkYXRlZCB3YXJuaW5nIG1lc3NhZ2UgaXMgZmluZS4KPj4+Cj4+Pj4g
SSBhZGRlZCB5b3VyIFNvQiBhcyB0aGlzIHdhcyBtaXNzaW5nIGluIHRoZSBwYXRjaAo+Pj4KPj4+
IEkgd29uZGVyIHdoYXQgdGhlIHNpZ25pZmljYW5jZSBvZiB0aGUgU29CIGlzIGdpdmVuIHRoYXQg
YSkgaXQncyBub3QKPj4+IGRvY3VtZW50ZWQgKGF0IGxlYXN0IGluIHRoZSBuZXRpZmQgc291cmNl
cykgYW5kIGIpIGl0IHNlZW1zIHRvIGJlIG9rIHRvCj4+PiAiZmFrZSIgc29tZW9uZSBlbHNlJ3Mg
U29CIGFuZCBjKSB0aGVyZSBhcmUgc2V2ZXJhbCBjb21taXRzIGluIHRoZSBuZXdlcgo+Pj4gaGlz
dG9yeSBvZiBuZXRpZmQgdGhhdCBkb24ndCBoYXZlIGEgU29CIG9mIGVpdGhlciBBdXRob3Igb3Ig
Q29tbWl0dGVyCj4+PiAob3IgYm90aCkuCj4+IEZvciBkZXRhaWxzIHdoeSBhIFNvQiBpcyByZXF1
aXJlZDsgc2VlCj4+IGh0dHBzOi8vb3BlbndydC5vcmcvc3VibWl0dGluZy1wYXRjaGVzI3NpZ25f
eW91cl93b3JrLgo+PiBJZiB0aGVyZSdyZSBhbnkgY29tbWl0cyBpbiB0aGUgbmV0aWZkIHJlcG8g
d2hpY2ggZG9uJ3QgaGF2ZSBhIFNvQiB0aGlzCj4+IG11c3QgcmF0aGVyIHN0YXkgYW4gZXhjZXB0
aW9uIHRoYW4gYmVjb21pbmcgYSBnZW5lcmFsIHJ1bGUuCj4gCj4gb2ssIHNvIHlvdSBjbGFpbSBt
eSBTb0IgbWVhbnMgdGhhdCAqSSogY29uZmlybWVkIHRoYXQgbXkgY2hhbmdlIGlzCj4gY29tcGF0
aWJsZSB0byB0aGUgbmV0aWZkJ3MgbGljZW5zZS4gSSBkaWRuJ3QgZG8gdGhhdCB0aG91Z2guCj4g
Cj4gRXZlbiBpZiBpdCB3YXMgbWUgd2hvIGFkZGVkIHRoYXQgbGluZSBJIGRvdWJ0IGlzIGhhcyBh
bnkgcmVsZXZhbmNlIGZvcgo+IG5ldGlmZCBiZWNhdXNlIG5vdGhpbmcgaW4gdGhlIG5ldGlmZCBz
b3VyY2VzIGV4cGxhaW5zIHdoYXQgYW4gU29CIG1lYW5zLgo+IEFuZCB0aGUgbGluayB5b3Ugc2Vu
dCBhcHBsaWVzIG9ubHkgdG8gcGF0Y2hlcyBmb3Igb3BlbndydCwgbm90IG5ldGlmZC4KPiAoQWxz
byBpZiB0aGlzIGlzIHRoZSBvbmx5IHBsYWNlIGZvciBvcGVud3J0IHdoZXJlIHRoZSBzaWduaWZp
Y2FuY2Ugb2YgYW4KPiBTb0IgaXMgZGVzY3JpYmVkIEkgd29uZGVyIGlmIHRoaXMgaXMgcmVsZXZh
bnQgZ2l2ZW4gdGhhdCBmcm9tIHRoZSBQT1Ygb2YKPiBvcGVud3J0LmdpdCB0aGUgd2lraSBpcyBh
biBleHRlcm5hbCByZXNvdXJjZSB0aGF0IGNhbiBiZSBtb2RpZmllZCBieQo+IGFueW9uZS4gV2hh
dCBpZiBzb21lb25lIHJlbW92ZXMgaXRlbSAoZCkgZnJvbSB0aGUgd2lraSBvciBpbnRyb2R1Y2Vz
IGFuCj4gKGUpPykKClRoZSB3aWtpIGlzIG5vdCBhIHRoaXJkIHBhcnR5IHByb2plY3QsIHRoZSBz
dHVmZiB3cml0dGVuIGluIHRoZSAKc3VibWlzc2lvbiBydWxlcyB3YXMgZGVjaWRlZCBieSBvciB3
cml0dGVuIGJ5IGNvcmUgT3BlbldydCBkZXZlbG9wZXJzLgoKQW55IGNoYW5nZSB0byB3aWtpIHBh
Z2VzIGlzIHJldmlld2VkIGFuZCBpZiBpdCBpcyB3cm9uZyBpdCBpcyByZXZlcnRlZCAKYnkgbWUg
b3IgdG1vbWFzICh3aWtpIGFkbWlucykuCgpUaGF0IHNhaWQsIEkgdGhvdWdodCBuZXRpZmQgaXMg
YSBkYWVtb24gY3JlYXRlZCBieSBPcGVuV3J0IHByb2plY3Qgc28gCnRoZSBzdWJtaXNzaW9uIHJ1
bGVzIHNob3VsZCBzdGlsbCBhcHBseS4KCi1BbGJlcnRvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
