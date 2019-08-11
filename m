Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CFE89113
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 11:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rppvoDaLkXgRFeXlw4DIoKoCQUCGcpB0fEBOWNNlkP8=; b=mBYFBg10r5FttzU0aT3lS4Jy6
	drflleCeF+fFLrrD2hdzdfKqcoxm+8aAw3qXBAlD5Hn4jjZNObSFr/d3SmyGKjfbW49zUaHDUwf2j
	7U1beP2rgtJ6fCr5GsOi1MAFOfBMb5lj9pJlATruydmxr3417HO3mO3SNcpxdWc59va3+JV7RSpg4
	I/ullD6lXcpkE+Th4OYDbp1uoxjMUscAFJPbFoToZ3qNvtu3NXDJGCxpFWxwwwywBc9n7WAic0wU+
	v5HpR1PYnwrvIl929hqLq4UGYZ2WsmQHxc/7H1O8sgRfbIpxFLYWzP0XtMCsSRyvQz8en15IR0hOP
	jRk6bLn1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwk7S-0006LO-R8; Sun, 11 Aug 2019 09:26:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwk75-0006L3-7E
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 09:26:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so9657740wms.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 11 Aug 2019 02:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=7stojZzYr3KpBw8fnRXkfYrJOo7MKm1TinAkxPgWM5A=;
 b=N4+AaqB7pP6quHqhpzYryt+C7CfgS1fY8gyYqXo1hQDdFQiMq5kNdQnzp9ZI08igZ0
 dkmxxSAkGT9aYW8w2yTqpHy/pWiX7SSrsULSgnQakuNsigZn75oM3t4wbhcHvD/bDz+C
 XMJYeyySUK2n7gJpKCdiNw7DwqZap52V59ZU0jhKGfMvSR/hf0gr5U8v59oxeZNjAULh
 qJgNAVwaQgxysb9KyfeYLfq6jIok2Jl56pnT6UQSwjTnst1yFDX5JH6NKTs3UAPBqC1R
 aufiqcKMLkg1mwoZCIUh9VnWTeDeBQIDg3AfHMP3L+695etHIG+WkhiAoDXbK3fewzvh
 BRWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7stojZzYr3KpBw8fnRXkfYrJOo7MKm1TinAkxPgWM5A=;
 b=lR1ilnPZFHHGfpgX3IN4SAEoFIMv72NAgD0ZTPe86mM4EQ23wlPBnAzgmp7lNlZRtC
 C4l9AYFau8Q10Bxl+2IvsuMGi0IXe4fc76RtnjxB40oBpxAW/CRu1TFAvqa1Msydez9J
 R8lYwrqs7RXwXJjPZM/x3kfH/mATlNUbhdySXI9XHQQOdWTnsPHr51MOvLRrPx4b3ZEs
 jiavo7yyL7NHbH3L/YyCZM+qLnyw/DxnyUeRaqkoZ7MdxwOEtVoEb5sZ6CWaitSDGxAE
 jazvxOO5MXf+oSZ3x8KYu+Ma81TBMYUSBwQuDncr1gTiUAheQH6k1vTOMbovDYJyN5+K
 taAg==
X-Gm-Message-State: APjAAAW4ezcfy4W2vxvEMR9pIPyupsxeVj2ytWoAja5dZX5pYovEHNOo
 OBR5UyQbE1K53X8VvJORu0/YkdeaxB8=
X-Google-Smtp-Source: APXvYqwaYxbgpJ6O1VpEqkc8QEMYb9Gjb7Oa0SvaBUCj4F94+ioTvYIn3lYchh9pD45Zs/jaLQo8bw==
X-Received: by 2002:a05:600c:24d0:: with SMTP id
 16mr5385305wmu.83.1565515564861; 
 Sun, 11 Aug 2019 02:26:04 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f18:2300:b015:2ed8:4bbb:9f7?
 (p200300EC2F182300B0152ED84BBB09F7.dip0.t-ipconnect.de.
 [2003:ec:2f18:2300:b015:2ed8:4bbb:9f7])
 by smtp.gmail.com with ESMTPSA id f10sm9044802wrw.16.2019.08.11.02.26.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 02:26:04 -0700 (PDT)
To: Birger Koblitz <mail@birger-koblitz.de>, openwrt-devel@lists.openwrt.org
References: <1399e68b-a5f7-c949-3bc9-cae951176f69@birger-koblitz.de>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <545efb1a-4916-f7cd-097d-605b5c420ad1@kresin.me>
Date: Sun, 11 Aug 2019 11:26:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1399e68b-a5f7-c949-3bc9-cae951176f69@birger-koblitz.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_022607_266877_2F625703 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: use gpio_hog instead of
 gpio-export
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

MDIvMDgvMjAxOSAxMTo1NywgQmlyZ2VyIEtvYmxpdHo6Cj4gbGFudGlxOiB1c2UgZ3Bpb19ob2cg
aW5zdGVhZCBvZiBncGlvLWV4cG9ydAo+IAo+IFRoZSBgZ3Bpby1leHBvcnRgIGZ1bmN0aW9uYWxp
dHkgaXMgYSBoYWNrIGZvcgo+IG1pc3Npbmcga2VybmVsIGZ1bmN0aW9uYWxpdHksIHdoaWNoIHdh
cyByZWplY3RlZCBpbiB1cHN0cmVhbSBrZXJuZWwgbG9uZwo+IHRpbWUKPiBhZ28sIGZvciBkZXRh
aWxzIHNlZSB0aGlzIGVtYWlsCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWls
L29wZW53cnQtZGV2ZWwvMjAxOS1GZWJydWFyeS8wMTU3NzIuaHRtbCwKPiBkaXNjdXNzaW9uIGlu
IFBSIzEzNjYgb3IKPiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMTgx
NCNpc3N1ZWNvbW1lbnQtNDYyOTQyMDIyLgo+IAo+IFRoaXMgcGF0Y2ggY29udmVydHMgYWxsIHJl
bWFpbmluZyBsYW50aXEgLmR0cyhpKSBmaWxlcyB3aGljaCB3ZXJlCj4gdXNpbmcgZXhwb3J0LWdw
aW8gYW5kIG5vdCBtYWtpbmcgdXNlIG9mIHRoZSBjaGFuZ2UtZGlyZWN0aW9uIGZ1bmN0aW9uYWxp
dHkKPiB0byB1c2luZyBncGlvX2hvZyBpbnN0ZWFkCj4gCj4gU2lnbmVkLW9mZi1ieTogQmlyZ2Vy
IEtvYmxpdHogPG1haWxAYmlyZ2VyLWtvYmxpdHouZGU+Cj4gCj4gLS0tCgouLi4KCj4gZGlmZiAt
LWdpdCBhL3RhcmdldC9saW51eC9sYW50aXEvZmlsZXMvYXJjaC9taXBzL2Jvb3QvZHRzL0RNMjAw
LmR0cwo+IGIvdGFyZ2V0L2xpbnV4L2xhbnRpcS9maWxlcy9hcmNoL21pcHMvYm9vdC9kdHMvRE0y
MDAuZHRzCj4gaW5kZXggNDc5NjEyM2MyMC4uMGIyMWI2NzUwNCAxMDA2NDQKPiAtLS0gYS90YXJn
ZXQvbGludXgvbGFudGlxL2ZpbGVzL2FyY2gvbWlwcy9ib290L2R0cy9ETTIwMC5kdHMKPiArKysg
Yi90YXJnZXQvbGludXgvbGFudGlxL2ZpbGVzL2FyY2gvbWlwcy9ib290L2R0cy9ETTIwMC5kdHMK
PiBAQCAtMzcsMjIgKzM3LDYgQEAKPiAgwqDCoMKgwqAgwqDCoMKgIH07Cj4gIMKgwqDCoMKgIH07
Cj4gICAKPiAtwqDCoMKgIGdwaW9fZXhwb3J0IHsKPiAtwqDCoMKgIMKgwqDCoCBjb21wYXRpYmxl
ID0gImdwaW8tZXhwb3J0IjsKPiAtwqDCoMKgIMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwwPjsKPiAt
Cj4gLcKgwqDCoCDCoMKgwqAgYW5uZXhhIHsKPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1l
eHBvcnQsbmFtZSA9ICJhbm5leGEiOwo+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9y
dCxvdXRwdXQgPSA8MD47Cj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlvIDEy
IEdQSU9fQUNUSVZFX0hJR0g+Owo+IC3CoMKgwqAgwqDCoMKgIH07Cj4gLcKgwqDCoCDCoMKgwqAg
YW5uZXhiIHsKPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1leHBvcnQsbmFtZSA9ICJhbm5l
eGIiOwo+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9ydCxvdXRwdXQgPSA8MD47Cj4g
LcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlvIDE1IEdQSU9fQUNUSVZFX0hJR0g+
Owo+IC3CoMKgwqAgwqDCoMKgIH07Cj4gLcKgwqDCoCB9Owo+IC0KPiAgwqDCoMKgwqAgbGVkcyB7
Cj4gIMKgwqDCoMKgIMKgwqDCoCBjb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4gICAKPiBAQCAt
ODUsNiArNjksMjQgQEAKPiAgwqDCoMKgwqAgfTsKPiAgwqB9Owo+ICAgCj4gKyZncGlvIHsKPiAr
wqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPiArCj4gK8KgwqDCoCBhbm5leGEgewo+ICvCoMKgwqAg
wqDCoMKgIGdwaW8taG9nOwo+ICvCoMKgwqAgwqDCoMKgIGxpbmUtbmFtZSA9ICJhbm5leGEiOwo+
ICvCoMKgwqAgwqDCoMKgIGdwaW9zID0gPDEyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICvCoMKgwqAg
wqDCoMKgIG91dHB1dC1sb3c7Cj4gK8KgwqDCoCB9Owo+ICsKPiArwqDCoMKgIGFubmV4YiB7Cj4g
K8KgwqDCoCDCoMKgwqAgZ3Bpby1ob2c7Cj4gK8KgwqDCoCDCoMKgwqAgbGluZS1uYW1lID0gImFu
bmV4YiI7Cj4gK8KgwqDCoCDCoMKgwqAgZ3Bpb3MgPSA8MTUgR1BJT19BQ1RJVkVfSElHSD47Cj4g
K8KgwqDCoCDCoMKgwqAgb3V0cHV0LWxvdzsKPiArwqDCoMKgIH07Cj4gK307Cj4gKwo+ICDCoCZl
dGgwIHsKPiAgwqDCoMKgwqAgbGFudGlxLHBoeXMgPSA8JmdwaHkxPjsKPiAgIAoKTkFLIG9uIHRo
aXMgY2hhbmdlLiBIZXJlIHcndmUgYW4gZXhhbXBsZSB3aGVyZSB3ZSBjYW4ndCBob2cgZ3Bpb3Mu
CgpUaGVzZSBncGlvcyBhcmUgdXNlZCB0byBzd2l0Y2ggdGhlIHhEU0wgRnJvbnRlbmQgdG8gZWl0
aGVyIEFubmV4IEEgb3IgCkFubmV4IEIgbW9kZS4gSXQncyBhIGNvbmZpZ3VyYXRpb24gd2hpY2gg
aGFzIHRvIGJlIGRvbmUgZnJvbSB1c2Vyc3BhY2UsIApiYXNlZCBvbiB0aGUgdXNlciBzZWxlY3Rh
YmxlIEFEU0wgbW9kZS4gSGF2ZSBhIGxvb2sgYXQgY29tbWl0IAowOGNkNWI3NjlkZWI0ODMzYjdh
MjAyMDhmYTE1Njc0ZjUyMDIzZmVhIGZvciByZWZlcmVuY2UuCgpJZiB3ZSBob2cgdGhlIGdwaW9z
LCB0aGV5IGNhbid0IGJlIGNvbnRyb2xsZWQgZnJvbSB1c2Vyc3BhY2UgYW55IG1vcmUuCgpCZWZv
cmUgd2UgZHJvcCB0aGVzZSBleHBvcnRzLCB3ZSBuZWVkIHRvIGZpbmQgYW5vdGhlciBzb2x1dGlv
biBmb3IgdGhpcyAKdXNlIGNhc2UuCgpSZWdhcmRzCk1hdGhpYXMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
