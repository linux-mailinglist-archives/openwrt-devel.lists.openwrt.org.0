Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C92131635
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 17:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:Reply-To:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etscsWAUJvj0R+V9Rfm1b3gouauTpU1xjRuZ4QQEoVI=; b=abJCY7fL9RyUo2
	aAFExSfjfdgSN7GDv5VcX6ZHuN9GSBdHlobgcHVlAF3a4wAt57D6+F+xNml5TKeXn9dzEk6LeNRxy
	gEy0ZHDZfEIIo5vq3TLYKBeOT45n2euBmVtuK4M1DInHIz7Z+NbjL22r31BQakMIKR2bZOhLPyvSo
	BbwFZYfd466mjEx4aGWZX83ZKVFfvEQV409ynYCfgKHwQ+0m+IxAa/Rf+EJIWPs7dxGSA/5Kg0nyx
	euJNOEYgRqczW88DDE9GRWAuHYcgbyskp61XIVvDot3xCetobfmIm2zHiZUey+EToMZpdAPBwnQU7
	5WJbGIwxCGYFZv4w57Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioVPt-00022S-Da; Mon, 06 Jan 2020 16:39:45 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioVPl-00021r-T8
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 16:39:39 +0000
Received: by mail-wr1-x431.google.com with SMTP id y17so50379670wrh.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 08:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=H1+YOc1RO23ZlA0m7WACjswwG/i8eAx1oogFgOUe4ls=;
 b=B7qEw4oF1sL7dWIx1q39WUotWVTfqifm9aNJDd8Fa/o0G44eaSeGlBj6JOeEIXiOCN
 yI8rT2q1Kf8LqZZn5b5y2RlvAvH77Fdnn0rDfyD9TbYE9AWxoVe5Jiy3I+CnZW/av9S6
 p9i68A46pz+MAH8FYHDzM0yQaPcTldqHwSSOzicUBQKZ3nj/esFn9At8QZuAi5piCRDY
 WsLMC0PQjr+QHoqjsu+NAr94wUqqGBCvxeHA7enPhIz6iUr3IUTMutmiVV/Wc/JWHDxp
 /GJ1bWJsFeobxPnVqC87OG0/YZj1geypLdmQV0Yv7MhLKG+jX7tNfBIRXJ03t1zuNtIa
 mxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H1+YOc1RO23ZlA0m7WACjswwG/i8eAx1oogFgOUe4ls=;
 b=UGMLfAr2h6LW8ur6vRfxKKvVWbY537Rn6EtRZ1aeLiEwZgQPlshdqT4KUH+iaAYsNA
 Alr+1mYwoGvEOFDd6mzWcETk/u5Ib4KERVp3iHwO6d8Jdq8FqjAz9nVMtPHPegwT/Mie
 L3kk2Bb6/H7lib340ZVMZqPog/ABiYAXshMaG/sTtu5RV+U7f+AcGKf92wum0U7OJ9+E
 QKbO3vGGHKDiFyS1Te5y3JAq7J7Qmxn8Lk9CPnZiIkLDlUKUrCwB6JAadZmzQi62PyxZ
 a7m4+8TkugW5XN81oVyK/M3tb1TX3Ym94eAs7/oFJ19AOHEjDf8GuMBpKE6Vk+G1FdMj
 HDaQ==
X-Gm-Message-State: APjAAAU4r0EkSlyI/+gsLkLsBxMQTDpl8wYUgSIuUU/3qO4IucHvQ40t
 UERwOuvfsp0r70RFoLj2dAFYek2it+g=
X-Google-Smtp-Source: APXvYqyqjepi2iIGqHWxUqzG4n+RFR1MmuBN0wkYsTSXMUTftLioSq0bWMNH01IeWxgdaKyRHvjHXw==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr104752468wrs.247.1578328773805; 
 Mon, 06 Jan 2020 08:39:33 -0800 (PST)
Received: from localhost
 (p200300F66706DFAC1C7FBAE9057843F6.dip0.t-ipconnect.de.
 [2003:f6:6706:dfac:1c7f:bae9:578:43f6])
 by smtp.gmail.com with ESMTPSA id f16sm72495835wrm.65.2020.01.06.08.39.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 08:39:33 -0800 (PST)
Cc: openwrt-devel@lists.openwrt.org
References: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
 <20200106162058.GA86978@meh.true.cz>
From: e9hack <e9hack@gmail.com>
Message-ID: <ea2a62b2-04bd-ccab-1658-049c30f2635b@gmail.com>
Date: Mon, 6 Jan 2020 17:39:32 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <20200106162058.GA86978@meh.true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_083937_942933_6CA1180A 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.1 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gMDYuMDEuMjAyMCB1bSAxNzoyMCBzY2hyaWViIFBldHIgxaB0ZXRpYXI6Cj4gZTloYWNrIDxl
OWhhY2tAZ21haWwuY29tPiBbMjAyMC0wMS0wNiAxNjo1OTo0N106Cj4gCj4+IGl0IGxvb2tzIGxp
a2UgdGhhdCB1aHR0cGQvbHVjaS9ycGNkIGlzIGJyb2tlbiBhZ2Fpbi4gVGhlIGNhbGwgJ3VidXMg
Y2FsbAo+PiBsdWNpLXJwYyBnZXRXaXJlbGVzc0RldmljZXMnIGRvZXMgZmFpbCAnQ29tbWFuZCBm
YWlsZWQ6IFJlcXVlc3QgdGltZWQgb3V0Jy4KPiAKPiBjYW4geW91IHByb3ZpZGUgbGl0dGxlIGJp
dCBtb3JlIGRldGFpbHM/ICBJIGRvbid0IHNlZSBhbnkgcHJvYmxlbXMgd2l0aAo+IGBPcGVuV3J0
IDE5LjA3LVNOQVBTSE9ULCByMTA4NTctYWJiMDY2NWJlY2AgcnVubmluZyBvbiBUUC1MaW5rIEFy
Y2hlciBDNyB2NS4KClJvdXRlciBpcyBhIFRQLUxpbmsgQXJjaGVyIEM3IHYyLiBJJ20gdXNpbmcg
dGhlIGxhc3QgbWFpbiByZXZpc2lvbjogT3BlbldydCBTTkFQU0hPVCByMTE5MjQtOTlkZDI3MDli
OC4gQWZ0ZXIgbG9naW4gaW4gdWh0dHBkL2x1Y2ksIHRoZSBmaXJzdCBwYWdlIHRpbWVzIG91dCBh
bmQgZm9yY2VzIG5ldyBsb2dpbi4gRnJvbSBteSBsYXN0IGV4cGVyaWVuY2Ugd2l0aCBhIHVodHRw
L2x1Y2kgY3Jhc2gsIEkgY2hlY2tlZCBhbGwgdXNlZCB1YnVzIGNhbGxzIGluIGEgc2hlbGwuICd1
YnVzIGNhbGwgbHVjaS1ycGMgZ2V0V2lyZWxlc3NEZXZpY2VzJyBkb2VzIHRpbWUgb3V0IGFuZCBn
ZW5lcmF0ZXMgYSBwYWdlIGZhdWx0OiAKCk1vbiBKYW4gIDYgMTc6MjE6MzIgMjAyMCBrZXJuLmlu
Zm8ga2VybmVsOiBbIDIzNjEuMTk3NjI5XSBkb19wYWdlX2ZhdWx0KCk6IHNlbmRpbmcgU0lHU0VH
ViB0byBycGNkIGZvciBpbnZhbGlkIHdyaXRlIGFjY2VzcyB0byAwMDAwMDAwMApNb24gSmFuICA2
IDE3OjIxOjMyIDIwMjAga2Vybi5pbmZvIGtlcm5lbDogWyAyMzYxLjIwNjA5NF0gZXBjID0gNzdm
MjU1ODggaW4gbGliYy5zb1s3N2YwODAwMCs5YjAwMF0KTW9uIEphbiAgNiAxNzoyMTozMiAyMDIw
IGtlcm4uaW5mbyBrZXJuZWw6IFsgMjM2MS4yMTEyNzVdIHJhICA9IDc3ZGY1OWQ1IGluIGx1Y2ku
c29bNzdkZjQwMDArMTUwMDBdCiAKUmVnYXJkcywKSGFydG11dAoKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
