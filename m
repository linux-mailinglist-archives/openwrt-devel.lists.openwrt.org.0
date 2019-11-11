Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98838F8067
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 20:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ro7Dvs76OCthKB5yXG7acWYE0yUtTH16p2Qu1pC3n0=; b=ERp8qEHiVNz9u0bSw8KgI12QX
	/ZIart99gh++DdjI7aXH3XKgp6L0IIkjNanMwfIrzjlBL7PagGi8UzJttHqtcAuIDiVSn3z4Ewu5/
	8uGyzwr5O5aarxZ66iWkQFuD9O4lFKi9m0Y0zjMJXqY4kRCgoK9L6OuK9NLWGzq/Z91Q5+ZzbF24j
	mVYx4nEdhEE+hUUTq1Fa81IW/VGNDl/+VFZQoAm/DulQAEJD3RjUwlHA3+bV+t3mWROhcYJyakICM
	ll3iLC8GhxN5+UM5g+xBbmB/ZYU/sdom/BvYKbLTr0IYLXSI7hlh5qJdncbR5m3HlJaFjBEMsXL5X
	a2s4bRO0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFe1-0007to-Ds; Mon, 11 Nov 2019 19:46:37 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFdt-0007t9-4y
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 19:46:31 +0000
Received: by mail-lj1-x244.google.com with SMTP id t5so15150287ljk.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 11:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=dbxbUzA0SJ39NnKThzdJT4xGedaVgNx/CcPwL67T4Ao=;
 b=r3nkYdYhQeQ4bgapvj9AFYKx6EMJgo4qJ+StSIZvh+YVWagS43dmHe12Dp0p5hz9aQ
 kscAgczNZO9+gBjGpUskb8RT42VzLeqsXvW8xK9ePViqyzBAva6jAd1nbmoShOVMfFac
 +pGI/g5kOU6V11KW4K8jhX3AnKUHOysH+ODKwK7NiUSBkib2Widw0SVNHTnEULaGXbo+
 ERxBWbORj4S2DyvKKAYy+UDmlCeSIGaNAp0p9r4cUp+C9C7RhI7DxspdZAQ45gjSTyN2
 Pz7heV08u5seL4k25SMIZKrcccHBQDKQhWgloNFg7iy4SR1rCFGSxoAtZMsRVCkr/P/j
 3/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dbxbUzA0SJ39NnKThzdJT4xGedaVgNx/CcPwL67T4Ao=;
 b=q+oNCDjeb2AszP6VcoQqUx7srZluHrCl8yeYtTh++kP1FXcvXIMkrMBz48G34/lZq9
 FhRj+bEmLjIrj0vrqrdrIIC9rlpKMY+FHfNT/dxNpknioj6TrXR5uO5yVBiAO5ksXlxH
 j/KJCFwXQfWY6b8Dc8D5s9PIArN22QCb/e6ZeSpge3KDgGjgtGMlnt/0D7FsSTAINjrN
 hU/ynsiTv45y5PZUMArk6VFjmgarAlowBdjewk6+mc7z8Y1l4QQBPbj/euQrFFZtF9Cs
 0rKWPWDh1PPu/wl1Kop/tuuCAYcpzgqIWElkkYNVweBdhe1G2ULUEsuLRVRm0oF0WDjh
 MgXQ==
X-Gm-Message-State: APjAAAX4MtB1IbhRcyMLY4TZs/BZ/ZR/rk0ZL6f30/vnR5Zw1riueXtM
 LOqxgJ1PmfzFRR+YGf5PtGHlrgh4
X-Google-Smtp-Source: APXvYqyEQxxJhAHzIriJXIgCA1ST7WMk0nCKxZrsey6zfbmW6fT+Gz5+GjjcKknEJGM20lVZuSu3Bg==
X-Received: by 2002:a05:651c:1066:: with SMTP id
 y6mr1362621ljm.96.1573501587282; 
 Mon, 11 Nov 2019 11:46:27 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id x23sm6224070lfe.8.2019.11.11.11.46.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 11:46:26 -0800 (PST)
To: Ivan Baktsheev <dot.and.thing@gmail.com>, openwrt-devel@lists.openwrt.org
References: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
 <2b531a3c-60a9-78ce-508b-1069adbe1fcd@gmail.com>
 <64E0FF73-6AB2-497C-BB00-3E8DED2BFEE3@gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <a3731671-cfc1-4000-0c99-e2277b3be547@gmail.com>
Date: Mon, 11 Nov 2019 20:46:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <64E0FF73-6AB2-497C-BB00-3E8DED2BFEE3@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_114629_285260_38202143 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] wlan factory defaults
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

SGkgSXZhbiwKCk9uIDExLjExLjIwMTkgMjA6MzMsIEl2YW4gQmFrdHNoZWV2IHdyb3RlOgo+IFBp
b3RyLAo+IAo+PiBPbiAxMSBOb3YgMjAxOSwgYXQgMjE6MzUsIFBpb3RyIER5bWFjeiA8cGVwZTJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4+IAo+PiBIaSBJdmFuLAo+PiAKPj4gT24gMTEuMTEuMjAxOSAx
OTowOSwgSXZhbiBCYWt0c2hlZXYgd3JvdGU6Cj4+PiBIaSwKPj4+IEkgd2FudCB0byBhZGQgbmV3
IGRldmljZSwgYnV0IGFzIG9mIG5vdyBJIGNhbiB1cGxvYWQgZmlybXdhcmUgd2lyZWxlc3NseSBh
bmQgdGhlbiBJIG5lZWQgdG8gY29ubmVjdCB1c2luZyB3aXJlZCBjb25uZWN0aW9uLCBiZWNhdXNl
IGluIHN0b2NrIE9wZW5XcnQgaW1hZ2Ugd2lyZWxlc3MgaXMgZGlzYWJsZWQuCj4+PiBGb3IgbXkg
cm91dGVyIChhbmQgcHJvYmFibHkgbWFueSBvdGhlcnMpIGRlZmF1bHQgV2lGaSBTU0lEIHN0b3Jl
ZCBpbiBmYWN0b3J5IHBhcnRpdGlvbiBhbmQgaXTigJlzIHF1aXRlIGVhc3kgdG8gZXh0cmFjdC4g
VW5mb3J0dW5hdGVseSwgd2lyZWxlc3Mgc2V0dXAgdGFrZXMgcGxhY2UgaW4gZGlmZmVyZW50IHRp
bWUgdGhhbiB3aXJlZC9ncGlvL2xlZHMgc2V0dXAgZnJvbSAvZXRjL2JvYXJkLmQgYW5kIGRlZmF1
bHRzIGFyZSBoYXJkY29kZWQgaW4gL2xpYi93aWZpL21hYzgwMjExLnNoCj4+PiBDdXJyZW50bHks
IEkgaGF2ZSAvZXRjL2JvYXJkLmQvMDRfZmFjdG9yeV9kZWZhdWx0cywgd2hpY2ggZXh0cmFjdHMg
ZmFjdG9yeSBkZWZhdWx0cyBmb3Igcm9vdCBwYXNzd29yZCBhbmQgV2lGaS4gV2lGaSBzZXR0aW5n
cyB3cml0dGVuIGludG8gL2V0Yy9mYWN0b3J5XzgwMjExLCB3aGljaCB0aGVuIHJlYWQgYXQgL2xp
Yi93aWZpL21hYzgwMjExLnNoCj4+PiBJIHdvdWxkIGxpa2UgdG8gaW50ZWdyYXRlIHRoaXMgaW50
byBPcGVuV3J0LCBwbGVhc2UgdGFrZSBhIGxvb2sgYXQgZnVsbCBleGFtcGxlIGF0IGh0dHBzOi8v
Z2lzdC5naXRodWIuY29tL2FwbGEvYTgxY2FkMGExZGM5ZmVkZmVmZjE5OTQxMTE2ZGEzNjkgYW5k
IHNoYXJlIHlvdXIgdGhvdWdodHMuIERpZmYgZm9yIC9saWIvd2lmaS9tYWM4MDIxMS5zaDoKPj4g
Cj4+IElNSE8sIHRoYXQgd291bGQgYmUganVzdCB0b28gbXVjaCBibG9hdC4gT3BlbldydCBpcyBh
IGdlbmVyaWMgcGxhdGZvcm0gKG9yIGEgZGlzdHJpYnV0aW9uKSwgdGh1cyBfcGVyc29uYWxseV8g
SSBkb24ndCB0aGluayB3ZSBzaG91bGQgc3VwcG9ydCBhbGwgdGhlIGRpZmZlcmVudCB3YXlzIHZl
bmRvcnMgdXNlIHRvIGtlZXAgdGhlaXIgc29mdHdhcmUgc2V0dGluZ3MuIE90aGVyd2lzZSwgd2Ug
ZW5kIHVwIHdpdGggYnVuY2ggb2Ygc2NyaXB0cyBmZXRjaGluZyBkYXRhIGZvciB2YXJpb3VzIGRl
dmljZXMgYW5kIHRoYXQgd291bGRuJ3QgZ2V0IGV2ZXIgdW5pZmllZCBhbmQgcHJvYmFibHkgYXQg
c29tZSBwb2ludCwgdW5tYWludGFpbmFibGUuIFdoYXQncyBtb3JlLCB3ZSBjYW4ndCB0cnVzdCB2
YWx1ZXMgc3RvcmVkIGluIHZlbmRvciBzZXR0aW5ncyAtIGluIHdvcnNlIGNhc2UsIHdpdGhvdXQg
c29waGlzdGljYXRlZCBkYXRhIHZlcmlmaWNhdGlvbiwgd2UgbWlnaHQgZW5kIHVwIHdpdGggYnJv
a2VuIHVjaSBjb25maWd1cmF0aW9uLgo+IAo+IEkgdGhpbmsgdGhlIHNhbWUuIFZlbmRvcnMgZG9u
4oCZdCBjYXJlIGFib3V0IGNvbW1vbiBsb2NhdGlvbiB0byBzdG9yZSBkZWZhdWx0cywgdGhpcyBj
YW4gYmUgY2hhbmdlZCBpbiB2ZXJ5IHVudXN1YWwgd2F5cy4gTXkgcGF0Y2ggZm9yIG1hYzgwMjEx
LnNoIGp1c3QgYWRkIHBvc3NpYmlsaXR5IHRvIG92ZXJyaWRlIGRlZmF1bHQgdmFsdWVzIGZvciB3
bGFuLiBJZiBzcGVjaWZpYyBPcGVuV3J0IGJ1aWxkIGNvbnRhaW5zIC9ldGMvZmFjdG9yeV84MDIx
MSwgdGhlbiBpdCB3aWxsIGJlIHByb2Nlc3NlZCBhbmQgdXNlZCwgb3RoZXJ3aXNlIHJhZGlvIHdp
bGwgYmUgb2ZmLCBzc2lkID0gT3BlbldydCwgbm8gZW5jcnlwdGlvbiwganVzdCBsaWtlIGFzIG9m
IHRvZGF5Lgo+IAo+IEhvdyB0byBwdXQgdGhpcyBjb25maWd1cmF0aW9uIGludG8gZGV2aWNlPyBU
aGlzIGlzIG5vdCBhIHF1ZXN0aW9uIGZvciBPcGVuV3J0IGRldmVsb3BlcnMsIGJ1dCBmb3IgcGVv
cGxlLCB3aG8gYnVpbGQgY3VzdG9taXplZCBPcGVuV3J0IGZpcm13YXJlLiBJdOKAmXMgZGVmaW5p
dGVseSBiZXR0ZXIgdG8gY3VzdG9taXNlIGJ1aWxkIHVzaW5nIHNjcmlwdHMvY29uZmlndXJhdGlv
bnMgaW4gL2V0YywgdGhhbiBjaGFuZ2luZyAvbGliL3dpZmkvbWFjODAyMTEuc2gsIGFzIEkgc2F3
IGluIHNvbWUgYnVpbGRzLgoKQSBjdXN0b20gJ3VjaS1kZWZhdWx0cycgc2NyaXB0IGluY2x1ZGVk
IGluIGltYWdlLCB1c2luZyAnLi9maWxlcycgCmFwcHJvYWNoIHNob3VsZCBkbyB0aGUgam9iLCBz
ZWUgdGhlIFdpa2kgZm9yIG1vcmUgaW5mb3JtYXRpb246CgpodHRwczovL29wZW53cnQub3JnL2Rv
Y3MvZ3VpZGUtZGV2ZWxvcGVyL2J1aWxkLXN5c3RlbS91c2UtYnVpbGRzeXN0ZW0jY3VzdG9tX2Zp
bGVzCgpodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUtZGV2ZWxvcGVyL3VjaS1kZWZhdWx0
cwoKLS0gCkNoZWVycywKUGlvdHIKCj4gCj4+IC0tIAo+PiBDaGVlcnMsCj4+IFBpb3RyCj4+IAo+
Pj4gZGlmZiAtLWdpdCBhL3BhY2thZ2Uva2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi93aWZpL21h
YzgwMjExLnNoIGIvcGFja2FnZS9rZXJuZWwvbWFjODAyMTEvZmlsZXMvbGliL3dpZmkvbWFjODAy
MTEuc2gKPj4+IGluZGV4IGJlOWM1MzcuLjNjODhjODEgMTAwNjQ0Cj4+PiAtLS0gYS9wYWNrYWdl
L2tlcm5lbC9tYWM4MDIxMS9maWxlcy9saWIvd2lmaS9tYWM4MDIxMS5zaAo+Pj4gKysrIGIvcGFj
a2FnZS9rZXJuZWwvbWFjODAyMTEvZmlsZXMvbGliL3dpZmkvbWFjODAyMTEuc2gKPj4+IEBAIC0x
LDEwICsxLDEyIEBACj4+PiAgIyEvYmluL3NoCj4+PiAgLiAvbGliL25ldGlmZC9tYWM4MDIxMS5z
aAo+Pj4gICAgYXBwZW5kIERSSVZFUlMgIm1hYzgwMjExIgo+Pj4gICsuIC9ldGMvZmFjdG9yeV84
MDIxMQo+Pj4gKwo+Pj4gIGxvb2t1cF9waHkoKSB7Cj4+PiAgCVsgLW4gIiRwaHkiIF0gJiYgewo+
Pj4gIAkJWyAtZCAvc3lzL2NsYXNzL2llZWU4MDIxMS8kcGh5IF0gJiYgcmV0dXJuCj4+PiAgCX0K
Pj4+ICBAQCAtOTUsMjUgKzk3LDQ5IEBAIGRldGVjdF9tYWM4MDIxMSgpIHsKPj4+ICAJCQlkZXZf
aWQ9InNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS5wYXRoPSckcGF0aCciCj4+PiAgCQllbHNl
Cj4+PiAgCQkJZGV2X2lkPSJzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0ubWFjYWRkcj0kKGNh
dCAvc3lzL2NsYXNzL2llZWU4MDIxMS8ke2Rldn0vbWFjYWRkcmVzcykiCj4+PiAgCQlmaQo+Pj4g
ICsJCWV2YWwgcmFkaW9faV9kaXNhYmxlZD1cJHJhZGlvJHtkZXZpZHh9X2Rpc2FibGVkCj4+PiAr
CQlyYWRpb19pX2Rpc2FibGVkPSR7cmFkaW9faV9kaXNhYmxlZDotJHtyYWRpb19kaXNhYmxlZDot
MX19Cj4+PiArCQlldmFsIHJhZGlvX2lfY291bnRyeT1cJHJhZGlvJHtkZXZpZHh9X2NvdW50cnkK
Pj4+ICsJCXJhZGlvX2lfY291bnRyeT0ke3JhZGlvX2lfY291bnRyeTotJHJhZGlvX2NvdW50cnl9
Cj4+PiArCQlpZiBbICEgLXogIiRyYWRpb19pX2NvdW50cnkiIF0gOyB0aGVuCj4+PiArCQkJdWNp
X3JhZGlvX2NvdW50cnk9InNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS5jb3VudHJ5PSR7cmFk
aW9faV9jb3VudHJ5fSIKPj4+ICsJCWVsc2UKPj4+ICsJCQl1Y2lfcmFkaW9fY291bnRyeT0KPj4+
ICsJCWZpCj4+PiArCj4+PiArCQlldmFsIHdsYW5faV9zc2lkPVwkd2xhbiR7ZGV2aWR4fV9zc2lk
Cj4+PiArCQl3bGFuX2lfc3NpZD0ke3dsYW5faV9zc2lkOi0ke3dsYW5fc3NpZDotT3BlbldydH19
Cj4+PiArCQlldmFsIHdsYW5faV9lbmNyeXB0aW9uPVwkd2xhbiR7ZGV2aWR4fV9lbmNyeXB0aW9u
Cj4+PiArCQl3bGFuX2lfZW5jcnlwdGlvbj0ke3dsYW5faV9lbmNyeXB0aW9uOi0ke3dsYW5fZW5j
cnlwdGlvbjotbm9uZX19Cj4+PiArCQlldmFsIHdsYW5faV9rZXk9XCR3bGFuJHtkZXZpZHh9X2tl
eQo+Pj4gKwkJd2xhbl9pX2tleT0ke3dsYW5faV9rZXk6LSR3bGFuX2tleX0KPj4+ICsJCWlmIFsg
ISAteiAiJHdsYW5faV9rZXkiIF0gOyB0aGVuCj4+PiArCQkJdWNpX3dsYW5fa2V5PSJzZXQgd2ly
ZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4fS5rZXk9JHt3bGFuX2lfa2V5fSIKPj4+ICsJCWVs
c2UKPj4+ICsJCQl1Y2lfd2xhbl9rZXk9Cj4+PiArCQlmaQo+Pj4gKwo+Pj4gIAkJdWNpIC1xIGJh
dGNoIDw8LUVPRgo+Pj4gIAkJCXNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fT13aWZpLWRldmlj
ZQo+Pj4gIAkJCXNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS50eXBlPW1hYzgwMjExCj4+PiAg
CQkJc2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9LmNoYW5uZWw9JHtjaGFubmVsfQo+Pj4gIAkJ
CXNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS5od21vZGU9MTEke21vZGVfYmFuZH0KPj4+ICAJ
CQkke2Rldl9pZH0KPj4+ICAJCQkke2h0X2NhcGFifQo+Pj4gLQkJCXNldCB3aXJlbGVzcy5yYWRp
byR7ZGV2aWR4fS5kaXNhYmxlZD0xCj4+PiArCQkJc2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9
LmRpc2FibGVkPSR7cmFkaW9faV9kaXNhYmxlZH0KPj4+ICsJCQkke3VjaV9yYWRpb19jb3VudHJ5
fQo+Pj4gICAgCQkJc2V0IHdpcmVsZXNzLmRlZmF1bHRfcmFkaW8ke2RldmlkeH09d2lmaS1pZmFj
ZQo+Pj4gIAkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9LmRldmljZT1yYWRp
byR7ZGV2aWR4fQo+Pj4gIAkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9Lm5l
dHdvcms9bGFuCj4+PiAgCQkJc2V0IHdpcmVsZXNzLmRlZmF1bHRfcmFkaW8ke2RldmlkeH0ubW9k
ZT1hcAo+Pj4gLQkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9LnNzaWQ9T3Bl
bldydAo+Pj4gLQkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9LmVuY3J5cHRp
b249bm9uZQo+Pj4gKwkJCXNldCB3aXJlbGVzcy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9LnNzaWQ9
JHt3bGFuX2lfc3NpZH0KPj4+ICsJCQlzZXQgd2lyZWxlc3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4
fS5lbmNyeXB0aW9uPSR7d2xhbl9pX2VuY3J5cHRpb259Cj4+PiArCQkJJHt1Y2lfd2xhbl9rZXl9
Cj4+PiAgRU9GCj4+PiAgCQl1Y2kgLXEgY29tbWl0IHdpcmVsZXNzCj4+PiAgICAJCWRldmlkeD0k
KCgkZGV2aWR4ICsgMSkpCj4+PiAgCWRvbmUKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+Pj4g
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+Pj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
