Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776E4FB1D9
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 14:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0zRvz1WUjAsy0rcvt09FNWsjJJMEcvtvBbBmfbAlCU=; b=CbUtIhHQCDLZ4P
	ZkgCRjOLZ/uQBEJKWJEPIE+WeyqxIEoFKufm79I88C4YkI8rYLugl0LV1Wg6CD3/DRPnT/VHy0zNA
	J+HITDrfXvWJEaysJ5PzwKN7o4V/+xZGRry0gtxMC8uo5Vwrcr6wNSHnGES/FQ04u+3dJxF+9zyU4
	ZQDBDpPXdko0/HtYQ20dqxoVimKr5hcOug7UXLlo6Ewqm7t27vVuThw7GtEgHcEIYJUPySo7Lb+VV
	GMlQ3VzaIr7RV9eEUpUNXLsyEV9oKn899w8RHmcl2Z9iIQ6SC/+/Ac8k4fh7a2M8tgqm0opeqUM7t
	xgzrNP55zDkZwYqtVWSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUt7L-0000KK-5P; Wed, 13 Nov 2019 13:55:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUt7D-0000Jj-P3
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 13:55:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id b17so2109884wmj.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 Nov 2019 05:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5+L47BruLMOjsWeKtWIUPJ+EyiuYpGRNSv+mj2v4sZY=;
 b=YGJqTuzO3GfiUcO9KuwyKNZ1tSkp9MUVnumvhRB1fVW+48yOhYTX/LL6MJnO8LFd+M
 UiYCfaTbwBHhv84b7ed1S2qE0tptonKLgjnxA+DEhJZqoRV8JZO2/HAVm22t1RbKeUiY
 LntXXqGg2IF/9bsPU2k1G4UJRBwN7rHJfbhgAMFToU+5r4MBORMxPq2WZafh1uhog1rT
 hagjAGt1ScMk0DbfmUAael+DWo9Jlcg2QY0Ws4TW0rTzV+Y0iJE6hXhgletvoy0peNuc
 xfx1T4YirVxlVUuqdmZa7HtcHvRpkVbdiXQ6ou0zcH+iFe6kGGTCx1s8zWp5AHvq2kJg
 fa2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5+L47BruLMOjsWeKtWIUPJ+EyiuYpGRNSv+mj2v4sZY=;
 b=YE4aKl8T7TzaLbDYVfEiqKx5Ql7L61aQPBA5WaQmxI3M9FecrGDylGedouA9WjBseL
 YVqOJLlHX8XxPlKcnSPwDxdJFMEC5T3orcUhMnu7JYIJP0CSh/gKy3pw+5Xw7eWsUfKs
 qFjA3n3Vkk0xf+gsfffEMDy0dl0ckiZW3wuObWnjzC6r0wRYE70NB3ErGF1IXNPOtOVt
 2rZZTRW/AvhyJ+3Z53+xSErlrXZ4Rmsj57P6FTvmbInvTZa390aP0sRdUx02WsOONmfV
 1JGF9jpNNNYWi7nnbDsPy4eSaTqL+NuRLlBWhI3FcF4YlA4VTfcp6yD7dM0rCKt8eZzL
 3GYA==
X-Gm-Message-State: APjAAAUcV/oLmTGXkwzditdivCGpARoi7nfyYn3jLFG0pXHMtn+5aAJl
 3STv2kqn/0mdmqkKNkdxB968CPicYPGtb/WzX2lSERj2
X-Google-Smtp-Source: APXvYqzpvvhrXWXAo0uH9IbR0pMUqfTecCJ/Rlwp5SXmvaObzWAYxgarFfFYeN3grPLkDcR3V/nPHt1IfQpacvtrZO8=
X-Received: by 2002:a1c:7911:: with SMTP id l17mr2732682wme.107.1573653320698; 
 Wed, 13 Nov 2019 05:55:20 -0800 (PST)
MIME-Version: 1.0
References: <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
 <20191110090447.16563-1-ynezz@true.cz>
In-Reply-To: <20191110090447.16563-1-ynezz@true.cz>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 13 Nov 2019 14:54:57 +0100
Message-ID: <CAOiHx==jFgqNrMvNW8a=2kFzuQr+pCAqWAi0oSfksBoVUAHHrA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_055524_913814_1D589275 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2 maintainer-tools] patchwork-apply.sh:
 try to fix DMARC mangled patches
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU3VuLCAxMCBOb3YgMjAxOSBhdCAxMDowNSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBJbiBvcmRlciB0byBhdm9pZCBETUFSQyBwbGFndWUgaW4gdGhlIGNvbW1p
dCBtZXNzYWdlczoKPgo+ICA4N2Y5MjkyMzAwY2YgaG9zdGFwZDogYWRkIElFRUUgODAyLjExayBz
dXBwb3J0Cj4gIDQ1MGQ0NGE4ZWFkMiBvcGVuc3NsOiBjaGFuZ2UgZGVmYXVsdHM6IEVOR0lORTpv
biwgTlBOOm9mZiwgbWlzYwo+ICBlYWJjMWRkYzQ1NDEgYnVpbGQ6IEhvbm91ciBOT19DT0xPUiBp
biBpbmNsdWRlL3NjYW4ubWsKPiAgM2ZiNDU1NzZhYzE2IGNyeXB0b2Rldi1saW51eDogbW92ZSBm
cm9tIHBhY2thZ2VzIGZlZWQKPiAgYTczMjgzZGMxMGY3IGtlcm5lbDogbmYtbmF0aGVscGVyLWV4
dHJhIGRlcGVuZHMgb24gaXB0LXJhdwo+ICAwMzE3ZmMzNjU4ZWIgbGlicGNhcDogcGF0Y2ggdG8g
YWRkIGxpbWl0cy5oIHRvIHBjYXAtdXNiLWxpbnV4LmMKPiAgMjZkYmY3OWY0OTA1IGxpYmV2ZW50
MjogRG9uJ3QgYnVpbGQgdGVzdHMgYW5kIHNhbXBsZXMKPiAgZDU5MTI2MDQwNzAxIGJyY202M3h4
OiBpbml0aWFsIHN1cHBvcnQgZm9yIFNreSBTUjEwMiByb3V0ZXIKPiAgMDk0ZDQ5Y2RkZjkzIGtl
cm5lbDogYnVtcCA0LjE0IHRvIDQuMTQuNTEKPiAgMjQ3MDU1Y2JmYmYxIGlnbXBwcm94eTogYnVt
cCB0byAwLjIuMQo+ICBjNDUxNDM0Yjk2M2QgY2FrZTogYnVtcCB0byAyMDE4MDUwNCBiYWtlCj4g
IDA4MGZiN2EzZmJiNiBpcHJvdXRlMjogaW1wb3J0IGxhdGVzdCBjYWtlCj4gIGFkNWFmMzdjYTc5
MyBpcHJvdXRlMjogYmFja3BvcnQganNvbl9wcmludC1maXgtaGlkZGVuLTY0LWJpdC10eXBlLXBy
b21vdGlvbgo+ICA3OGY0MzA1OTMzYjkgaWZ0b3A6IGJ1bXAgdG8gbGF0ZXN0Cj4gIDc3ODNmMzEz
NTljYiBiYXNlLWZpbGVzOiBuYW5kOiB1c2UgQ0lfS0VSTlBBUlQgd2hlbmV2ZXIgdGhlIGtlcm5l
bCB2b2x1bWUgaXMgbmVlZGVkCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6Pgo+IC0tLQo+ICBwYXRjaHdvcmstYXBwbHkuc2ggfCA3ICsrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL3BhdGNod29yay1h
cHBseS5zaCBiL3BhdGNod29yay1hcHBseS5zaAo+IGluZGV4IDU1MDZhZGJmZTQ1MS4uMTU0M2M3
ZmRhY2ViIDEwMDc1NQo+IC0tLSBhL3BhdGNod29yay1hcHBseS5zaAo+ICsrKyBiL3BhdGNod29y
ay1hcHBseS5zaAo+IEBAIC0xNDAsNiArMTQwLDEzIEBAIGVjaG8gIiQxIiB8IGdyZXAgLXNxRSAn
XlswLTldKyQnIHx8IHsKPiAgICAgICAgIH0KPiAgfQo+Cj4gK2dyZXAgLS1jb2xvciAtLWNvbnRl
eHQ9MyAiRE1BUkMgUmVqZWN0L1F1YXJhbnRpbmUiICIkMS5wYXRjaCIgJiYgewo+ICsgICAgICAg
aWYgISB5ZXNubyAiRE1BUkMgbWFubGVkIHBhdGNoIGRldGVjdGVkLCBhdHRlbXB0IHRvIGZpeCBp
dD8iICJ5IjsgdGhlbgo+ICsgICAgICAgICAgICAgICBleGl0IDQKPiArICAgICAgIGZpCj4gKyAg
ICAgICBzZWQgLWkgJy9UaGUgc2VuZGVyIGRvbWFpbiBoYXMgYSBETUFSQy8sL2F1dG9tYXRpY2Fs
bHkgYnkgdGhlIG1haWxpbmcgbGlzdCBzb2Z0d2FyZS4vZCcgIiQxLnBhdGNoIgo+ICt9Cj4gKwoK
VGhlIHBhdGNoIGF1dGhvciBpdHNlbGYgYWxzbyBuZWVkcyB1bm1hbmdsaW5nLiBpdCBjdXJyZW50
bHkgaXMgImZvbwpiYXIgdmlhIG9wZW53cnQtZGV2ZWwgPC4uLj4iLiBUaGUgb3JpZ2luYWwgYXV0
aG9yIHNlZW1zIHRvIGJlCmF2YWlsYWJsZSBpbiBhICJSZXBseS1UbzoiIGhlYWRlciAtIG5vIGlk
ZWEgaG93IHN0YWJsZSB0aGF0IGlzLgoKQWZ0ZXIgdGhhdCBpdCBsb29rcyBnb29kIElNSE8uIEFu
ZCB5ZXMsIGhhdmluZyBhIHNhbml0eSBjaGVjayBhcyBhCmNvbW1pdCBob29rIHdvdWxkIGJlIGdv
b2QsIGJ1dCBpcyBhIHNlcGFyYXRlIHRoaW5nIGZyb20gdGhpcyBwYXRjaC4KU2FtZSBmb3IgYSBm
aXhlZCBwYXRjaHdvcmsgdmVyc2lvbiwgYnV0IHRoZXJlIGhhcyBiZWVuIG5vIHJlbGVhc2UgeWV0
CndpdGggdGhlIGZpeFsxXS4KCgpSZWdhcmRzCkpvbmFzCgpbMV0gaHR0cHM6Ly9naXRodWIuY29t
L2dldHBhdGNod29yay9wYXRjaHdvcmsvY29tbWl0LzgyNzlhODQyMzhjMTBhY2JjYWRkMDc1ZTRl
OTk4ZGZmZGMzOWYyZTkKCgo+ICBnaXQgYW0gIiQxLnBhdGNoIiB8fCB7Cj4gICAgICAgICBlY2hv
ICJGYWlsZWQgdG8gYXBwbHkgcGF0Y2ggJDEiID4mMgo+ICAgICAgICAgZ2l0IGFtIC0tYWJvcnQK
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
