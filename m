Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CACA1338B
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 20:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HP44BJXR2rzmYIINfTj3bqcQfoA1bTX3h2yG5+4jhQQ=; b=Q8PGyRM/5V3mgpYAdygRLvEuY
	avrXY7cdbIB2FIcc+Vp+R6WPHC5ZtEn61ElogLSCHG5r0ecuTX9gm9Xbyq3kAIKFtGuLg6kbNnOx/
	pzt6wFeTzfM5ZKCML/Y8GxGvC78hzyh7IIkkcR5Q7lAk2VziVEihP+AxB27hWIYSmu9s3Wi546GKy
	9R4mrbB55r/27tlSk3s6G2wuvFiDD9f8qsfeiXqjF/pL7Nt8W4eNCHxCDex9y0/IcpQVrrqcSqhrJ
	3uC1EGkUu0gOja6ksiSpbe8YYNHihHMumjolzgYAzc88aehjQc1LFkpLng+NwzFcUMxQzGOcWEcA0
	wK7vdzlyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcjp-0000Xn-JQ; Fri, 03 May 2019 18:16:49 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcji-0000X8-Ib
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 18:16:44 +0000
Received: by mail-ed1-x542.google.com with SMTP id m4so7026111edd.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 May 2019 11:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=hN5Rerh/vqCO2BBSshWcKl93rEacdtjWjs9Vv6ATOuI=;
 b=E9X05fOrqFO7U6zxoHuzELnJzXxln7gVDptMnrve5IDV10RN0+3R0Ye1ouZvlCrGK2
 qyKSBDnOd3T4tCvypVXmIzZQstAX0Ecp52vSYuaNXjU9WfwDN84VDB4XqWpVy6UZCYdk
 rt4zfN36qRLPZI+wX9C7TYLHiKUJL/ImLtFnajIDusMNcsUAkkr98fR42D+pQGwqcDZG
 4cbHW1GJSLldFTGdf3792h/1iBqQl541mp1/iQN6p5KhH2Wn9vfDQLHHgUnKWVdDB/lS
 1R3apkEkDBGZpYpd47tZgbM1Rf9737eciOH2Prs6qNVvWBu5xoDBEFoe2VEn070S0wPX
 Tf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=hN5Rerh/vqCO2BBSshWcKl93rEacdtjWjs9Vv6ATOuI=;
 b=LzwuPmS6a1zD0dkf6PqiENJK/PQWz0vrybEgffAPCKRnn+1S3aiMuVj7KS/AtjKQ/g
 YtRkk0iKjDXFFt3mmCTdG/Sk+8/zOTlC4rkvp+nTlDZ/qqV42YvUcaq6TePv38IvWeRX
 BNDLpa77r4PezafMbtNjjNPVObXJ7EBdnSssYnWbefCAAlmI5n9tbxS66zl973SECCPj
 V8ZemDPvdCadHktpZLIrBCbpOqvAPzi92tXH54yR5tM69KCOEsd2vrg1+17GB0oIlJlN
 MWdf8nfNiSPh91JIDbEq1gyPrz2h4VvGcPK3xlCAtBW5U396bGkQ59OOZZOv6ewwEJf/
 iw/g==
X-Gm-Message-State: APjAAAVkknV4czTrf92anIAxhiV1WQgytqE0Ds3xXNSeDbIhaXWB0RTj
 EXR4B45ssItx/qw6wg5boP8=
X-Google-Smtp-Source: APXvYqx3wWDih5Iw0hY6Ec5qYm2K6nfvxJJkyQT6hh6Hylt1fNa8tFhzh2tCiXckrHmrRR7njtHXZg==
X-Received: by 2002:a50:84e7:: with SMTP id 94mr10063871edq.137.1556907400378; 
 Fri, 03 May 2019 11:16:40 -0700 (PDT)
Received: from ?IPv6:2a02:168:6806:0:f019:cd3d:1c8d:9a06?
 ([2a02:168:6806:0:f019:cd3d:1c8d:9a06])
 by smtp.gmail.com with ESMTPSA id by19sm274489ejb.60.2019.05.03.11.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 11:16:39 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190424191439.32298-1-klaus.kudielka@gmail.com>
 <20190424191439.32298-2-klaus.kudielka@gmail.com>
 <20190503170500.GA73395@meh.true.cz>
From: Klaus Kudielka <klaus.kudielka@gmail.com>
Message-ID: <524607f2-518e-7517-97c5-2ea5ae71846d@gmail.com>
Date: Fri, 3 May 2019 20:16:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503170500.GA73395@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_111642_643293_BF4B1371 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klaus.kudielka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: improve
 lib/upgrade/common.sh
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMDMuMDUuMTkgMTk6MDUsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gS2xhdXMgS3VkaWVsa2Eg
PGtsYXVzLmt1ZGllbGthQGdtYWlsLmNvbT4gWzIwMTktMDQtMjQgMjE6MTQ6MzhdOgo+Cj4gSGkg
S2xhdXMsCj4KPj4gUmVtb3ZlIHdvcmthcm91bmRzIGZvciB0aGUgb2xkLCBpbmNvbnNpc3RlbnQg
YmVoYXZpb3VyIGZyb20gdGhlIGZvbGxvd2luZwo+PiB0YXJnZXRzOiBhcG04MjF4eCwgYnJjbTI3
MDgsIG9tYXAsIHN1bnhpLgo+IEknbSB3aWxsaW5nIHRvIHB1c2ggdGhlIGZpeCBmb3IgbXZlYnUg
KHdoaWNoIHRoZSBwYXRjaCBzZXJpZXMgaXMgYWJvdXQpLCBzbwo+IHBsZWFzZSBkb24ndCB0b3Vj
aCBvdGhlciB0YXJnZXRzLiAgVGhpcyBzaG91bGQgZ28gaW50byBzZXBhcmF0ZSBwYXRjaChlcykg
YW5kCj4gaW4gb3JkZXIgdG8gcHVzaCBpdCwgSSB3b3VsZCBuZWVkIHNvbWUgVGVzdGVkLWJ5LCBS
ZXZpZXdlZC1ieSBvciBBY2tlZC1ieSBmb3IKPiBldmVyeSBwbGF0Zm9ybSBzZXBhcmF0ZWx5LgoK
UGV0ciwgZG8gSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgSSBzaG91bGQgc3BsaXQgdGhpcyBzaW5n
bGUgcGF0Y2ggaW50bwp0aGUgY29tbW9uLnNoIG9uZSwgYW5kIGZvdXIgYWRkaXRpb25hbCBvbmVz
IChvbmUgcGVyIHRhcmdldCk/CgotLQoKTGV0IG1lIHJlbWluZCB5b3UgdGhhdCB0aGUgY29tbW9u
IG9uZSAqYWxvbmUqIGJyZWFrcyBzeXN1cGdyYWRlIGZvciB0aG9zZQpmb3VyIHRhcmdldHMsIGFz
IFRvbWFzeiBhbHJlYWR5IHBvaW50ZWQgb3V0IGVhcmxpZXIuCgpJbiBtb3JlIGRldGFpbDoKClRo
ZSByb290IG9mIHRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlICpleGlzdGluZyogZXhwb3J0X2Jvb3Rk
ZXZpY2UgaW4KL2xpYi91cGdyYWRlL2NvbW1vbi5zaCBiZWhhdmVzIGRpZmZlcmVudGx5LCBpZiB0
aGUga2VybmVsIGlzIGJvb3RlZCB3aXRoCnJvb3Q9L2Rldi8uLi4sIG9yIGlmIGl0IGlzIGJvb3Rl
ZCB3aXRoIHJvb3Q9UEFSVFVVSUQ9Li4uCgpJbiB0aGUgZm9ybWVyIGNhc2UsIGl0IHJlcG9ydHMg
YmFjayBtYWpvci9taW5vciBvZiB0aGUgcm9vdCBwYXJ0aXRpb24sCmluIHRoZSBsYXR0ZXIgY2Fz
ZSBpdCByZXBvcnRzIGJhY2sgbWFqb3IvbWlub3Igb2YgdGhlIGNvbXBsZXRlIGJvb3QgZGlzay4K
ClRoZSB0YXJnZXRzIG1lbnRpb25lZCBhYm92ZSBoYXZlIGFkZGVkIHdvcmthcm91bmRzIHRvIHRo
aXMgYmVoYXZpb3VyLCBieQpzcGVjaWZ5aW5nICpuZWdhdGl2ZSogaW5jcmVtZW50cyB0byB0aGUg
ZXhwb3J0X3BhcnRkZXZpY2UgZnVuY3Rpb24uCgpBbmQgdGhlbiBjYW1lIHRoZSBtdmVidSB0YXJn
ZXQgdG8gdXNlIGV4cG9ydF9ib290ZGV2aWNlIC8KZXhwb3J0X3BhcnRkZXZpY2UgYXMgd2VsbC4g
Tm93LCBkaWZmZXJlbnQgc3VidGFyZ2V0cyBib290IGRpZmZlcmVudGx5LAphbmQgdGhlIHdvcmth
cm91bmQgd291bGQgYmUgZXZlbiBtb3JlIGNvbXBsZXguCgpJIHRoaW5rIG5vdyBpcyB0aGUgdGlt
ZSB0byBtYWtlIGV4cG9ydF9ib290ZGV2aWNlIGJlaGF2ZSBjb25zaXN0ZW50bHksCmFuZCB0byBy
ZXBvcnQgbWFqb3IvbWlub3Igb2YgdGhlIGJvb3QgZGlzaywgcGVyaW9kLgoKQ29uc2VxdWVudGx5
LCB0aG9zZSB0YXJnZXRzLCB3aGljaCBib290IHdpdGggcm9vdD0vZGV2Ly4uLiAqYW5kKiB1c2UK
ZXhwb3J0X2Jvb3RkZXZpY2UgLyBleHBvcnRfcGFydGRldmljZSwgaGF2ZSB0byBiZSBhZGFwdGVk
IHRvIHVzZQpwb3NpdGl2ZSBpbmNyZW1lbnRzLCBvdGhlcndpc2UgdGhleSBhcmUgYnJva2VuIGJ5
IHRoZSBjaGFuZ2UKdG8gZXhwb3J0X2Jvb3RkZXZpY2UuCgpUaGUgdGFyZ2V0cyBhZmZlY3RlZCB3
ZXJlIGVhc3kgdG8gc3BvdCB3aXRoIGZpbmQgJiBncmVwLgoKPgo+PiBGaXhlczogNGU4MzQ1ZmY2
OCAoIm12ZWJ1OiBiYXNlLWZpbGVzOiBhdXRvZGV0ZWN0IHVwZ3JhZGUgZGV2aWNlIikKPj4KPj4g
U2lnbmVkLW9mZi1ieTogS2xhdXMgS3VkaWVsa2EgPGtsYXVzLmt1ZGllbGthQGdtYWlsLmNvbT4K
Pj4gQWNrZWQtYnk6IFRvbWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIucGw+Cj4gVG9tYXN6
LCB5b3Ugc2VlbSBwcmV0dHkgY29uZmlkZW50IGFib3V0IHRoaXMgY2hhbmdlcywgaG93IGlzIHRo
YXQ/IDotKQo+Cj4gLS0geW5lenoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
