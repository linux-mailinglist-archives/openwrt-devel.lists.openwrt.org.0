Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BC41D9A5B
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 16:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LzGGE3p1BXwhN6cNT8BAXjXuJknQ+MitcqKAdmQxP8Q=; b=mU5VGg5RbB4kcW1cTuvrIRCFT
	j+LRYPsTBRhMt6lIVdzUxsEP0I8SLliE9dyXc4ZXOY+wR8MO+UpFbePsCc+m2uVly4jYyNZ5GzjYJ
	sgxcZONvu87YJao4ddDiNXTQg3dfeAZ/nkkYoUrUzFj5ZInidAcPAPSCtAiAZN/fIQoBXg5hOaB36
	OpYPdMDakB0hb7NuVe2/ELehiIh/xw0nKDTvaaYhuxGbue15RIXDdASrfxWmzebRv9LzCvlkkq0SA
	fKZ2cPQLaI3BMj0lRcbbQJ1DDYGlwhsTWGrATyERvloTM84kQVmlgTEviQIMhObZUzTS5+dNp5LQC
	iJUgdmb8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3Xa-0007Dn-JG; Tue, 19 May 2020 14:48:22 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3XR-0007Bc-6t
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 14:48:15 +0000
Received: by mail-wm1-x329.google.com with SMTP id u188so3954477wmu.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 May 2020 07:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=9g30NHjhl6ol3V+lppvAHeu+c8P6huL16YCvPlVIpSA=;
 b=e2RBHfphU5fdSWInrmD9AQh32k5tQWTnwkKKy+FBATX8oK9qE2wP3dcORI4WBelZBn
 IuLFpe3939hWGZVBQlbfkvUM2SO5YBYGiNHL1Sk2o6MpAOpc9zFFpcWG23myvfulw2kI
 o7OqExyUbsLu8Hfyac/u6NUWRNBkLtdeIOPkq+Rq77sMG/zL0Wapeze8NfGl94AR+cTm
 rwGE637i6tPCt1323RMUwhkjIuipJW4aHGytBy387oFL2JFfDK8wlEeAYU/lQFGiDSQV
 XYfYRhGHxueQCRZyGwR9P5YI2BoTojDuOYpECyifEIcbBUoTzJeGNgqvQT1a35LdtFFI
 L9cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9g30NHjhl6ol3V+lppvAHeu+c8P6huL16YCvPlVIpSA=;
 b=SeRHdLwKQf9W1/tKGmC0cTDlVeKRSPlqJ4jXAdHte9es1itayq1L+2PiQs1f4cY1ln
 Cvn2sCBdOovvy9Ayd03FTZbb/XqxD9SuhM0iRfvvNo2BVNJ6uagSsG9LVP9WGpE/8hbG
 NDA8+uKqfGc+QdVtbni68f35g+CAoYHJfwsLIVJk4bW4VK/UCJm/LK5qCokpdZQkBnCl
 pN+5cm16L+bMlP7+8whxgFeYKAZCVHIG8LNmE8Z71J/tr0TF4lbQ3MVG4ahZO+fztfHD
 g3guZJ0eTn9jy3soa5qFHCagSC3s7mToWbQHEOFVjUxv/zKbpQh0vaQQK1uCIO1ZZmRx
 o2Rg==
X-Gm-Message-State: AOAM5307a5D8e2B1Bw+JST+pEH16CFMuDMeXrEhewdMhAezkOwadHHct
 uBnEX5YeenxnVyHkSHh40UA=
X-Google-Smtp-Source: ABdhPJwqTjJGrphh1nQLrPSbyvdzAUUcOgdPmKnm0lCpbgzvCZwfAg4JHLcgZYGCfGTJ4RQjEQQK6A==
X-Received: by 2002:a1c:bb57:: with SMTP id l84mr6226733wmf.128.1589899691263; 
 Tue, 19 May 2020 07:48:11 -0700 (PDT)
Received: from [172.18.1.84] (209.89-10-150.nextgentel.com. [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id v2sm21666316wrn.21.2020.05.19.07.48.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 07:48:09 -0700 (PDT)
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
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
 <bb6a2cc5-b991-9c7f-3308-79932fd70c56@gmail.com>
 <CALYKT1j_YqguM=JWWh97S9HMJ-Kjt_BQecQFh5T_G-+hdfmXtw@mail.gmail.com>
From: Magnus Kroken <mkroken@gmail.com>
Message-ID: <2139729f-826f-e738-f560-e3268d2555a5@gmail.com>
Date: Tue, 19 May 2020 16:48:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALYKT1j_YqguM=JWWh97S9HMJ-Kjt_BQecQFh5T_G-+hdfmXtw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_074813_252591_698E3EE4 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
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
 1.1 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: Jeonghum Joh <oosaprogrammer@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U29ycnksIGZvcmdvdCByZXBseS10byBsaXN0LgoKT24gMTkuMDUuMjAyMCAxMzoyMywgSmVvbmdo
dW0gSm9oIHdyb3RlOgo+IFRoYW5rIHlvdSEKPiAKPiBCdXQgSSBoYXZlIGFub3RoZXIgcXVlc3Rp
b24gOgo+IAo+ICDCoCBjb25maWcgem9uZQo+ICDCoCDCoCDCoCDCoCDCoCBvcHRpb24gbmFtZcKg
IMKgIMKgIMKgd2FuCj4gIMKgIMKgIMKgIMKgIMKgIGxpc3QgwqAgbmV0d29yayDCoCDCoCDCoCDC
oCDCoCd3YW4nCj4gIMKgIMKgIMKgIMKgIMKgIGxpc3QgwqAgbmV0d29yayDCoCDCoCDCoCDCoCDC
oCd3YW42Jwo+ICvCoCDCoCDCoCDCoCBsaXN0IMKgIG5ldHdvcmsgwqAgwqAgwqAgwqAgwqAnd3dh
bicKPiAgwqAgwqAgwqAgwqAgwqAgb3B0aW9uIGlucHV0IMKgIMKgIMKgIMKgIMKgIMKgUkVKRUNU
Cj4gIMKgIMKgIMKgIMKgIMKgIG9wdGlvbiBvdXRwdXQgwqAgwqAgwqAgwqAgwqAgQUNDRVBUCj4g
IMKgIMKgIMKgIMKgIMKgIG9wdGlvbiBmb3J3YXJkIMKgIMKgIMKgIMKgIMKgUkVKRUNUCj4gCj4g
QWJvdmUgaXMgcGFydCBvZiAvZXRjL2NvbmZpZy9maXJld2FsbC4KPiBBbmQgYXMgeW91IHNlZSwg
SSdkIGxpa2UgdG8gYWRkIG5ldyBpbnRlcmZhY2Ugd3dhbiBpbnRvIHpvbmUgd2FuLgo+IEhvdyBj
YW4gSSB3cml0ZSB1Y2kgY29tbWFuZCBzY3JpcHQgZm9yIHRoaXM/Cj4gCj4gVGhhbmsgeW91IHZl
cnkgbXVjaCEKPiBKZW9uZ2h1bQoKSGVyZSBpcyBhbiB1bnRlc3RlZCBzbmlwcGV0IEkgZm91bmQg
aW4gYW4gb2xkIHVjaS1kZWZhdWx0cyBzY3JpcHQgb2YgbWluZS4KCi0tLS04PC0tLS0KIyEvYmlu
L3NoCi4gL2xpYi9mdW5jdGlvbnMuc2gKCmxhbnpvbmVfdmFyPSIiCndhbnpvbmVfdmFyPSIiCgpm
aW5kX2ZpcmV3YWxsX3pvbmVzICgpIHsKICAgICAgICAgbG9jYWwgY29uZmlnPSIkMSIKICAgICAg
ICAgbG9jYWwgem9uZV9uYW1lCgogICAgICAgICBjb25maWdfZ2V0IHpvbmVfbmFtZSAiJGNvbmZp
ZyIgbmFtZQoKICAgICAgICAgaWYgWyAiJHpvbmVfbmFtZSIgPT0gImxhbiIgXQogICAgICAgICB0
aGVuCiAgICAgICAgICAgICAgICAgbGFuem9uZV92YXI9IiRjb25maWciCiAgICAgICAgIGVsaWYg
WyAiJHpvbmVfbmFtZSIgPT0gIndhbiIgXQogICAgICAgICB0aGVuCiAgICAgICAgICAgICAgICAg
d2Fuem9uZV92YXI9IiRjb25maWciCiAgICAgICAgIGZpCgogICAgICAgICByZXR1cm4gMAp9Cgpj
b25maWdfbG9hZCBmaXJld2FsbApjb25maWdfZm9yZWFjaCBmaW5kX2ZpcmV3YWxsX3pvbmVzIHpv
bmUKCnVjaSAtcSBhZGRfbGlzdCBmaXJld2FsbC4ke3dhbnpvbmVfdmFyfS5uZXR3b3JrPSd3d2Fu
JwotLS0tPjgtLS0tCgpJIGRvbid0IHRoaW5rIEkgYWN0dWFsbHkgdXNlZCB0aGlzLCBJIHdyb3Rl
IGl0IGJlY2F1c2UgSSB0aG91Z2h0IEkgbWlnaHQgCm5lZWQgaXQgYW5kIGl0IGZvbGxvd2VkIHRo
ZSBzYW1lIHBhdHRlcm4gYXMgbWFuaXB1bGF0aW5nIG5ldHdvcmsudmxhbiAKc2VjdGlvbnMuIEkg
ZG8ga25vdyBpdCBkb2Vzbid0IHdvcmsgaW4gbXkgY3VycmVudCBkZXZpY2Ugc2NyaXB0LCAKYWx0
aG91Z2ggSSBhdHRlbXB0ZWQgdG8gZml4IHRoYXQgZXJyb3IgaW4gdGhlIGNvZGUgYWJvdmUuIENv
bnNpZGVyIGl0IGEgCmhpbnQuCgpJbiBhZGRpdGlvbiwgSSd2ZSBub3QgbWVudGlvbmVkICd1Y2kg
Y29tbWl0JyBvciBjb21tYW5kcyB0byByZWxvYWQgCmNvbmZpZ3VyYXRpb24vc2VydmljZXMsIHdo
aWNoIHlvdSBwcm9iYWJseSBhbHNvIHdhbnQgdG8gYWRkIGluIHRoZXNlIApzY3JpcHRzLgoKUmVn
YXJkcywKTWFnbnVzIEtyb2tlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
