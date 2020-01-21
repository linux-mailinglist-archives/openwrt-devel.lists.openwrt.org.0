Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFF31444DE
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 20:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nlKxzuMlJTYPTGXAZTlLss+QFoNrsxBAQTIw8Kkbvgc=; b=feaaw8hT7p4EPbHPlhdQPU/ic
	LRdLtS6meJV+sUZ9p20PdLreBTemM0T2UdQuZFnSDW2/zKVBb0nP92RHvcgwfHF9ymM78jo8TNw+6
	7lq7BF/oTxHUdQe/rZoG5MOtgrZGrPg2xbb2JhP7C8XROPDFp0v1UzDaTacItq6/d3GOJxQbGlUPJ
	94W692UIPp4NIQp359ZK9vn4t+CdZf6XypzNf5FPjeKTg3QwINvU8Tlf3hl9/+GTIf19UsfUtdURZ
	LgI24h2s6KPtV2bugjXWC9W8BAjM/Cj6RshA4dFBv0/s4kMDxXwIWGfjhPnVcPcqajgAelt+EkZIQ
	Y4fSNF0ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityxu-0000AB-EW; Tue, 21 Jan 2020 19:13:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityxd-00009J-Mp
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 19:13:19 +0000
Received: by mail-lj1-x244.google.com with SMTP id u1so4006048ljk.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 11:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=E2PdAi91WELIO3jv3C8alHoW6KIMJivk35Uw7nz3DcQ=;
 b=ZIV2EFGGHELYw8dRQziSMbz/VezgXNV9tutdJx6X7x4+ynAoeaPJlt8kkuhNkRLqIH
 HKnKt1jZ+jt3sWdAkncTBvGrWFrnIGD6SnooJLD5uesP4ryHtCuxjU45acGTnoyu3qr6
 Yfkodaj6W6sexcd/VMVbe7D/jHo/voug6xWQBdptzLbs5uXDFa0S9eoCIl/h2+QZ8ilz
 ZpOnfAizSuaOJTkkwhpTZDrXJc9thshLDQ7QuSagFZ9GzZt/Asyoxg5nxzWjp1AemAjm
 Hst0NoP2siH1NP0VXqVpm3Asp9x8Khl5hHeGizwU1w+hD0uobe53NfDQzbI2WpMhWA6r
 YiUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E2PdAi91WELIO3jv3C8alHoW6KIMJivk35Uw7nz3DcQ=;
 b=CWeRTQmC5W8TLMUqLlUmeoI338NON3Au2JhnOjYn8KptYGFDUGANN0qHWwan0Bo4uQ
 ixjFDlGt4bA8i5PsALnd5WXlHa8c0qeDuw/wq8xX/A3R63pM1KtRISVTu5M2mzx+cXqx
 ll0ldPyDTuWgKWWJAUsx9hDkcYnOUs6F0yNBkjqsv28BOmPqYM+VSDQ3+67Ncgc768at
 1ypfQpB3oOL1w/X/NWW3dAyDiAFuneQl6/70qtE/AAcRl95DJwATjw5VaoHtYKnX9Bju
 0ulsuGFyHNUC0hn0JGqa8T5CcAborBB4McWxZhJdbbzkFWEsM/SO8Q1QixNHxKPbbV28
 AqgA==
X-Gm-Message-State: APjAAAVAgAIDneQmXYtxV7ciazNPbAYXZM0JPqRsYfTqfZCRZ1URiySb
 qpnIe3M2VyTyfw8uclrTkJbzGaUn
X-Google-Smtp-Source: APXvYqzfAciPf2muar47GTg4CW4X6hpuU+RKilv5nVj+JxnOlN0itzucUUbojbxlcXj4bkfp6RzeLQ==
X-Received: by 2002:a2e:89ce:: with SMTP id c14mr15544584ljk.13.1579633991187; 
 Tue, 21 Jan 2020 11:13:11 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id g15sm18867674ljl.10.2020.01.21.11.13.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 11:13:10 -0800 (PST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200120194024.25841-1-ynezz@true.cz>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <cf4c98bc-af17-0c67-08ef-3094466c608b@gmail.com>
Date: Tue, 21 Jan 2020 20:13:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200120194024.25841-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_111313_767016_69317316 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ramips: mt7621: ubnt-erx: allow
 sysupgrade from master
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

SGkgUGV0ciwKCk9uIDIwLjAxLjIwMjAgMjA6NDAsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gQ3Vy
cmVudGx5IGl0J3Mgbm90IHBvc3NpYmxlIHRvIGRvd25ncmFkZSBmcm9tIG1hc3RlcjoKPiAKPiAg
IERldmljZSB1YmlxdWl0aSxlZGdlcm91dGVyeCBub3Qgc3VwcG9ydGVkIGJ5IHRoaXMgaW1hZ2UK
PiAgIFN1cHBvcnRlZCBkZXZpY2VzOiB1Ym50LWVyeAo+IAo+IFNvIGZpeCBpdCBieSBhZGRpbmcg
YSBEVFMgYmFzZWQgZGV2aWNlIG5hbWUgZnJvbSBtYXN0ZXIgaW50bwo+IFNVUFBPUlRFRF9ERVZJ
Q0VTIGxpc3QuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4KPiAtLS0KPiAgIHRhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIxLm1rIHwgMiArKwo+
ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90YXJn
ZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tayBiL3RhcmdldC9saW51eC9yYW1pcHMvaW1h
Z2UvbXQ3NjIxLm1rCj4gaW5kZXggNTNhMjY0ZjUyN2E2Li5hODk5OTk3NDczMWEgMTAwNjQ0Cj4g
LS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjEubWsKPiArKysgYi90YXJnZXQv
bGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tawo+IEBAIC00ODMsNiArNDgzLDcgQEAgZGVmaW5l
IERldmljZS91Ym50LWVyeAo+ICAgICBLRVJORUxfSU5JVFJBTUZTIDo9ICQkKEtFUk5FTCkgfCB1
Ym50LWVyeC1mYWN0b3J5LWltYWdlICQoS0RJUikvdG1wLyQkKEtFUk5FTF9JTklUUkFNRlNfUFJF
RklYKS1mYWN0b3J5LnRhcgo+ICAgICBJTUFHRS9zeXN1cGdyYWRlLmJpbiA6PSBzeXN1cGdyYWRl
LXRhciB8IGFwcGVuZC1tZXRhZGF0YQo+ICAgICBERVZJQ0VfVElUTEUgOj0gVWJpcXVpdGkgRWRn
ZVJvdXRlciBYCj4gKyAgU1VQUE9SVEVEX0RFVklDRVMgKz0gdWJpcXVpdGlfZWRnZXJvdXRlcngK
ClNob3VsZG4ndCB0aGF0IGJlOiAndWJpcXVpdGksZWRnZXJvdXRlcngnICgnLCcgdnMuICdfJyk/
CgotLSAKQ2hlZXJzLApQaW90cgoKPiAgIGVuZGVmCj4gICBUQVJHRVRfREVWSUNFUyArPSB1Ym50
LWVyeAo+ICAgCj4gQEAgLTQ5MSw2ICs0OTIsNyBAQCBkZWZpbmUgRGV2aWNlL3VibnQtZXJ4LXNm
cAo+ICAgICBEVFMgOj0gVUJOVC1FUlgtU0ZQCj4gICAgIERFVklDRV9USVRMRSA6PSBVYmlxdWl0
aSBFZGdlUm91dGVyIFgtU0ZQCj4gICAgIERFVklDRV9QQUNLQUdFUyArPSBrbW9kLWkyYy1hbGdv
LXBjYSBrbW9kLWdwaW8tcGNhOTUzeCBrbW9kLWkyYy1ncGlvLWN1c3RvbQo+ICsgIFNVUFBPUlRF
RF9ERVZJQ0VTICs9IHViaXF1aXRpX2VkZ2Vyb3V0ZXJ4LXNmcAo+ICAgZW5kZWYKPiAgIFRBUkdF
VF9ERVZJQ0VTICs9IHVibnQtZXJ4LXNmcAo+ICAgCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+
IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
