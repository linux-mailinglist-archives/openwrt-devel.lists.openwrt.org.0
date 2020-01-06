Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFE213174C
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 19:14:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7h2XXGCj2meXTfJaDRMgVqxiA3dV7pgj2zb2iODoUfE=; b=WRCQ7WPZSWs92C
	ZtXsiBuskgTZXTq4FJQ3TbbZ1+hz/S9KvrVHzF9ekth9il4IsViYo8qCwfkq8hz69CZLcPaPVjMri
	+rFBmp4qXzwaNkiHLVwUveO69E+jdlBWDWsRx87bawX3hy/yc7jmwRxNGoDWNblaTEv+zJgJtW6oR
	9r2AY4u+osi313KklR+ThU5Ff5VuW0s/F+pkyg4C/WXGNGIPfdCUFOwloaskF/GSBUoCvlkbae7Dt
	cIN0JLNMIQJ441KKgI9PuUib1hr8KqtydG4m2mF2LDQeWnBZ+L08nQLjyx6EWkiT5ihPSBVXLWfL4
	O8BOyB17N3+KZwzG/DQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWsy-0006lL-Ad; Mon, 06 Jan 2020 18:13:52 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWsr-0006kS-FC
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 18:13:47 +0000
Received: by mail-wm1-x32b.google.com with SMTP id d73so15973796wmd.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 10:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:references:to:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=enefJB4et/KXDuPa2558slw5m1AwE3ya+cwlKSANMOQ=;
 b=OO3nzOSb4kyHSdLYA6vuMix9fSuX4s4FSvnQcgGL+pL2vSlfEwJV23R/TQn/1kciB4
 p/8nucaH+won/Hoi/QgStnQs5SOvxumKYh4/ptQj+jvImujifw81MGH8CAFMsg+J9d4F
 mVFxl4tFy/LPPKIa6Z1qkdfxdMA878Vn1YAH7Y4BrwzoTLAFYnQPtTdj4UkKo6mEsOoV
 QOS01pkjPPlaQy4aDPfNUONNoeiAkWJBilSDIUaSJJ5jsPoc7A/5Nk+WvTfqmFJ4S/5B
 OLuOT2CB5KjXUHA2M274Y6ASxO9amBB68606ZGXWS0J7nPNH5yer2d9c2cbRLpwxgXxC
 LUQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:references:to:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=enefJB4et/KXDuPa2558slw5m1AwE3ya+cwlKSANMOQ=;
 b=R7mGzKx978aWaM2RhGp5g5nGKwgxHO2wKGmKa6BGCcAIGR1AM+v+/SqZhblr0dZqEu
 Zh/GCloxtMdQx7GALoOjdBcyhNjaj4ncVZuYPXQnxKps6Oyo23XwrrZI1vv0scXeUkQM
 2Jj3iWF3ioRYJKNsUjrNaIbohlCIV1V4j5v1VgHnmDg7xKlNal/mnLYJp2qsjkfnWabZ
 shMnk/8OpwG2MvoQkNcPJqVjbF5VaxtqjJUHNzJ5M/Ss+w8oCIR8tv3Wc+aSZ2V1nI4m
 L3mmwdq65nh4RFHtrfQjDMYE/FLhlQEPlLff0L1Aevv36YY/iO9/Mnj4qaX6h7xpx38k
 V9Bg==
X-Gm-Message-State: APjAAAWtKV/4YaeGjK+rUYpBwW8XN9RiFo6LA5aNmRxh7e4PR4Kh53xR
 iek23Oz5TEldyDgMoXt4H9aC56N0KSk=
X-Google-Smtp-Source: APXvYqwCQj9DDseGycWZCXvxTjQVtBuWRR4L9VzFzbfnCzs31HQeXVVc9cyd3PDJdMWr5pzfdpF6tw==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr35366725wmh.35.1578334423509; 
 Mon, 06 Jan 2020 10:13:43 -0800 (PST)
Received: from localhost
 (p200300F6670759ACA17E14F4AB1B6AF6.dip0.t-ipconnect.de.
 [2003:f6:6707:59ac:a17e:14f4:ab1b:6af6])
 by smtp.gmail.com with ESMTPSA id t25sm23503051wmj.19.2020.01.06.10.13.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 10:13:43 -0800 (PST)
References: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
 <20200106162058.GA86978@meh.true.cz>
 <ea2a62b2-04bd-ccab-1658-049c30f2635b@gmail.com>
 <a8930dd7-a4f3-d241-9bd1-e2580ca2cea3@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
From: e9hack <e9hack@gmail.com>
Message-ID: <8038c121-9a0a-2003-4db1-7edf603c26e5@gmail.com>
Date: Mon, 6 Jan 2020 19:13:41 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <a8930dd7-a4f3-d241-9bd1-e2580ca2cea3@hauke-m.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_101345_509179_EC04C9CE 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

QW0gMDYuMDEuMjAyMCB1bSAxODoyMyBzY2hyaWViIEhhdWtlIE1laHJ0ZW5zOgo+IE9uIDEvNi8y
MCA1OjM5IFBNLCBlOWhhY2sgd3JvdGU6Cj4+IEFtIDA2LjAxLjIwMjAgdW0gMTc6MjAgc2Nocmll
YiBQZXRyIMWgdGV0aWFyOgo+Pj4gZTloYWNrIDxlOWhhY2tAZ21haWwuY29tPiBbMjAyMC0wMS0w
NiAxNjo1OTo0N106Cj4+Pgo+Pj4+IGl0IGxvb2tzIGxpa2UgdGhhdCB1aHR0cGQvbHVjaS9ycGNk
IGlzIGJyb2tlbiBhZ2Fpbi4gVGhlIGNhbGwgJ3VidXMgY2FsbAo+Pj4+IGx1Y2ktcnBjIGdldFdp
cmVsZXNzRGV2aWNlcycgZG9lcyBmYWlsICdDb21tYW5kIGZhaWxlZDogUmVxdWVzdCB0aW1lZCBv
dXQnLgo+Pj4KPj4+IGNhbiB5b3UgcHJvdmlkZSBsaXR0bGUgYml0IG1vcmUgZGV0YWlscz8gIEkg
ZG9uJ3Qgc2VlIGFueSBwcm9ibGVtcyB3aXRoCj4+PiBgT3BlbldydCAxOS4wNy1TTkFQU0hPVCwg
cjEwODU3LWFiYjA2NjViZWNgIHJ1bm5pbmcgb24gVFAtTGluayBBcmNoZXIgQzcgdjUuCj4+Cj4+
IFJvdXRlciBpcyBhIFRQLUxpbmsgQXJjaGVyIEM3IHYyLiBJJ20gdXNpbmcgdGhlIGxhc3QgbWFp
biByZXZpc2lvbjogT3BlbldydCBTTkFQU0hPVCByMTE5MjQtOTlkZDI3MDliOC4gQWZ0ZXIgbG9n
aW4gaW4gdWh0dHBkL2x1Y2ksIHRoZSBmaXJzdCBwYWdlIHRpbWVzIG91dCBhbmQgZm9yY2VzIG5l
dyBsb2dpbi4gRnJvbSBteSBsYXN0IGV4cGVyaWVuY2Ugd2l0aCBhIHVodHRwL2x1Y2kgY3Jhc2gs
IEkgY2hlY2tlZCBhbGwgdXNlZCB1YnVzIGNhbGxzIGluIGEgc2hlbGwuICd1YnVzIGNhbGwgbHVj
aS1ycGMgZ2V0V2lyZWxlc3NEZXZpY2VzJyBkb2VzIHRpbWUgb3V0IGFuZCBnZW5lcmF0ZXMgYSBw
YWdlIGZhdWx0OiAKPj4KPj4gTW9uIEphbiAgNiAxNzoyMTozMiAyMDIwIGtlcm4uaW5mbyBrZXJu
ZWw6IFsgMjM2MS4xOTc2MjldIGRvX3BhZ2VfZmF1bHQoKTogc2VuZGluZyBTSUdTRUdWIHRvIHJw
Y2QgZm9yIGludmFsaWQgd3JpdGUgYWNjZXNzIHRvIDAwMDAwMDAwCj4+IE1vbiBKYW4gIDYgMTc6
MjE6MzIgMjAyMCBrZXJuLmluZm8ga2VybmVsOiBbIDIzNjEuMjA2MDk0XSBlcGMgPSA3N2YyNTU4
OCBpbiBsaWJjLnNvWzc3ZjA4MDAwKzliMDAwXQo+PiBNb24gSmFuICA2IDE3OjIxOjMyIDIwMjAg
a2Vybi5pbmZvIGtlcm5lbDogWyAyMzYxLjIxMTI3NV0gcmEgID0gNzdkZjU5ZDUgaW4gbHVjaS5z
b1s3N2RmNDAwMCsxNTAwMF0KPj4gIAo+PiBSZWdhcmRzLAo+PiBIYXJ0bXV0Cj4gCj4gSSBzYXcg
c29tZSBzdHJhbmdlIGJlaGF2aW9yIG9mICJ1YnVzIGNhbGwgbHVjaS1ycGMgZ2V0V2lyZWxlc3NE
ZXZpY2VzIgo+IGluIG1hc3RlciwgaXQgZGlkIG5vdCBjcmFzaCBidXQgc2hvd2VkIHdyb25nIHZh
bHVlcyBvciBtaXhlZCBzb21lIHVwCj4gbGlrZSB0aGUgQlNTSUQgY29udGFpbnMgdGhlIFNTSUQu
IEkgZGlkIGEgY2xlYW4gYnVpbGQgYW5kIG5vdyBpdCBpcwo+IHdvcmtpbmcgZmluZSBmb3IgbWUu
IEkgaGF2ZW4ndCBzZWVuIHRoaXMgaW4gMTkuMDcuCj4gCgpBIGNsZWFuIGJ1aWxkIGRpZCBmaXgg
dGhlIGlzc3VlLgoKUmVnYXJkcywKSGFydG11dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
