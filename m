Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0691D9376
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 11:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RRdlKgM8IP/6BwUI7u1uqgZecsBFB8uz88ROy06oC5c=; b=SdqXKHTNeBetfRctmFRJAGc+B
	OTZK30pwL+aErTHz+xUnz9+Mj2u4LO9VnLQDdWOQ5p8ijBbV2I2xPe6+XPpfbVTaH+2TUMUfOVS6L
	e4TaeqiYyLWNIMX4J8wqpp5flAuFtuICx9WchsMEyHpyO/Zf60QuyhseBvVrMKkR1woduFdFCw5zx
	xjqKk5HEYa0cAKA0BDAttbg9lIgEgKj+2FMqYwkH/A4R1Sf93AmWgK1180MvjtpTxjihmFFQL2rGJ
	G3otj6KwYvkWWfDHggMTxAS5NJ2b/5OjDihXRGfi2NZnezTT4U6hrYJDm9NptdjZQs4xUkuok13Ca
	TbM2rNlaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayhO-00016x-Tg; Tue, 19 May 2020 09:38:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayhI-00016K-6f
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 09:38:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so13007999wrx.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 May 2020 02:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+g9HEJlV4wBNUHg3ghbT6TlwntNygUa14zj0bAK5U1g=;
 b=DB6eMqj6xoekgYwmKfHZYIrLAaeMJld7lEwP8AbadatRKh6mT+dBsJ3xK9/UI8VljY
 Psje1mgeDsXQEI5x33OIVXNISc+6cWvH028FWexlDPKzaKZhO745Rv8AZvcDMScrrjFq
 CYRUvF5Kz0SRSseRxbaVUK60Y5TMkdLM1GmraiAqXtSrrjSCu+HrWrQ44DbSwH4jYYmu
 DFeNcPDfQ2TuhOQlNvlfpDffTBBs2hiIX+N54V1+PtLx96xLYeXuu9xY5AuQzdHX5YJq
 ZRL6EXv8PwM9cHnxvqkQ3KXIrRe68dIqa/2dkFRpYNRE5g2wpcqtNPjGz514vOSSBUa1
 OROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+g9HEJlV4wBNUHg3ghbT6TlwntNygUa14zj0bAK5U1g=;
 b=RYJIht2zUpi72FfAHWnLGfeCbZ3ac86I+xnSImGHGLM2o2xEqz6HmHLxXUsZv6bu86
 C8dAPFZNy0R5CERVtkTlWqCMr5V4cLbkaFwIKKUMxZnwDEV0BcyxWhqXvesp2yXzSQ38
 Zk3sf4tmBbe9S5Uv3xQGvKIV8BVqwIdSWMAd+XJl5cwoUgCU+B2A4YNutvhiUhrj8gW4
 eD+wMt88jwhw6jqDmj00RFcGJJ55AMYgBSzGVE/wglW0aEeRLG38vt8YT5euy/+CdSkF
 UtvcUMrXaJuWu3V6Co73GYpVIzXpaUbd5ws76eFMQymyBt/b1BmpbyPOlTzuam5Kttm1
 vfPQ==
X-Gm-Message-State: AOAM533AHUJxSrAnFXeMVYrqsU1ISH6CbaF0RE89x+jKUgqUmsQDogoj
 Q/ErugpkyRJDt4sId3a7nQTELmGzu5U=
X-Google-Smtp-Source: ABdhPJyRM5nBl1wt984jXCnLzK7j+jgFiRHMba30tbxY5yHtw7v8qusObAIY91gnqyCUGgps0aBlRA==
X-Received: by 2002:a5d:4702:: with SMTP id y2mr23707648wrq.136.1589881082299; 
 Tue, 19 May 2020 02:38:02 -0700 (PDT)
Received: from [172.18.1.84] (209.89-10-150.nextgentel.com. [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id 205sm3364227wmc.12.2020.05.19.02.38.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 02:38:01 -0700 (PDT)
From: Magnus Kroken <mkroken@gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
 <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
 <CALYKT1hqiBvcEQ+tqDdMh3tHznSt2NamLcVqzneU5TFJZxX1Ow@mail.gmail.com>
 <CALYKT1hAPtXGuKu5gGd5B6VccuEY1g6COyFK6T0FsaoG43Tt8Q@mail.gmail.com>
Message-ID: <bb6a2cc5-b991-9c7f-3308-79932fd70c56@gmail.com>
Date: Tue, 19 May 2020 11:37:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALYKT1hAPtXGuKu5gGd5B6VccuEY1g6COyFK6T0FsaoG43Tt8Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_023804_262918_B39EB58B 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkKCk9uIDE5LjA1LjIwMjAgMDg6MzAsIEplb25naHVtIEpvaCB3cm90ZToKID4gY29uZmlnIGlu
dGVyZmFjZSAnd3dhbicKPiAgwqAgwqAgwqAgwqAgb3B0aW9uIGlmbmFtZSAndXNiMCcKPiAgwqAg
wqAgwqAgwqAgb3B0aW9uIHByb3RvICdkaGNwJwo+IAo+IFNvIEkgYWRkZWQgc29tZXRoaW5nIGxp
a2UgYmVsb3cgdG8gCj4gcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2V0Yy9ib2FyZC5kLzk5LWRl
ZmF1bHRfbmV0d29yayA6Cj4gCj4gIMKgIHVjaWRlZl9zZXRfaW50ZXJmYWNlX2xhbiAnZXRoMCcK
PiAgwqAgWyAtZCAvc3lzL2NsYXNzL25ldC9ldGgxIF0gJiYgdWNpZGVmX3NldF9pbnRlcmZhY2Vf
d2FuICdldGgxJwo+ICtbIC1kIC9zeXMvY2xhc3MvbmV0L3VzYjAgXSAmJiB1Y2lkZWZfc2V0X2lu
dGVyZmFjZV93YW4gJ3VzYjAnCj4gCj4gQnV0IHRoaXMgZGlkbid0IHJlc29sdmUgbXkgcHJvYmxl
bS4KPiAKPiBJIHRoaW5rIEkgY2FuIGp1c3QgbWFrZSBzb21lIGNvbW1hbmRzIGludG8gc3RhcnR1
cCBzY3JpcHQuCj4gSXNuJ3QgdGhlcmUgbW9yZSBncmFjZSBhcHByb2FjaCBmb3IgbWUgdG8gYXV0
b21hdGljYWxseSBhZGQgdXNiMCAKPiBpbnRlcmZhY2UgaW50byAvZXRjL2NvbmZpZy9uZXR3b3Jr
PwoKQXMgYWxyZWFkeSBzdWdnZXN0ZWQsIHVzZSB0aGUgZmlsZXMvIGRpcmVjdG9yeSB0byBpbmNs
dWRlIGZpbGVzLgoKJCBjZCBvcGVud3J0ICMgY2hhbmdlIHRvIHRoZSByb290IG9mIHlvdXIgT3Bl
bldydCBidWlsZCBlbnZpcm9ubWVudAokIG1rZGlyIC1wIGZpbGVzL2V0Yy91Y2ktZGVmYXVsdHMK
JCBta2RpciAtcCBmaWxlcy9ldGMvY29uZmlnCgpOb3cgeW91IGhhdmUgdHdvIG9wdGlvbnMuCgox
LiBQdXQgeW91ciBjb21wbGV0ZSB3b3JraW5nIC9ldGMvY29uZmlnL25ldHdvcmsgZmlsZSBpbiB0
aGUgZmlsZXMvIAp0cmVlLCBzbyBpdCByZXNpZGVzIGF0IGZpbGVzL2V0Yy9jb25maWcvbmV0d29y
ay4KCjIuIFdyaXRlIGEgc2NyaXB0IHdpdGggdGhlIFVDSSBjb21tYW5kcyBuZWVkZWQgdG8gY2hh
bmdlIHlvdXIgY29uZmlnLCAKYW5kIHB1dCBpdCBpbiBmaWxlcy9ldGMvdWNpLWRlZmF1bHRzLiBJ
IG5hbWUgbWluZSBlLmcuIAp6enpfMzNfZGV2aWNlX2NvbmZpZywgc28gdGhhdCB0aGV5IGFyZSBl
eGVjdXRlZCBhcyBsYXRlIGFzIHBvc3NpYmxlLgoKVGhlIGNvbW1hbmRzIHlvdSB3b3VsZCBuZWVk
IGZvciBvcHRpb24gMiBpcyBwcm9iYWJseToKCnVjaSAtcSBzZXQgbmV0d29yay53d2FuPWludGVy
ZmFjZQp1Y2kgLXEgc2V0IG5ldHdvcmsud3dhbi5wcm90bz0nZGhjcCcKdWNpIC1xIHNldCBuZXR3
b3JrLnd3YW4uaWZuYW1lPSd1c2IwJwpleGl0IDAKClRoaXMgaXMgdmVyeSBzaW1wbGUsIHlvdSBt
YXkgd2FudCB0byBzY3JpcHQgY2hlY2tzIHRvIGVuc3VyZSB0aGUgc2NyaXB0IAppcyBydW5uaW5n
IG9uIGNvcnJlY3QgZGV2aWNlIChlLmcuIGJ5IGNoZWNraW5nIGZvciBhIE1BQyBhZGRyZXNzKSwg
YW5kIAppZiB0aGUgdXNiMCBkZXZpY2UgZXhpc3RzLgoKUmVnYXJkcwpNYWdudXMgS3Jva2VuCgo+
IFRoYW5rIHlvdSBpbiBhZHZhbmNlLgo+IEplb25naHVtCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
