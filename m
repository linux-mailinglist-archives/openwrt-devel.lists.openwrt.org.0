Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865BD1EC2F
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 12:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WPeEgXSGvc6jwVlU2VUx432oFEb445hLrNTCvtGryM=; b=T20/jehNlXXWDo
	CNwogqUOKB8T498WbViPY7Frg12T/CYxgdbbKb0cou3lhbtq1f/vULEEDzGj6n4oPYjUQ6N3Mvd7t
	DEyak+w17zp4C255QajVLiFhb7urQaLX6nj5GU57FiEeFMofMtXst6xPhC6Q7RN5HewXTvBzdRH8g
	BBLSodNqvuGZFaFjQwp1F0YrVHkXPzXOehoECvfrtgmThTl4a8gIpMm1GR3bwyHKACsDNY31G+ON5
	HbR7Zj+QQHhz3nlUAcF2yHmKngnqP0ebkCwz54h17+TBw/ZK8xtQx/l4HtvO1Ovtjaba+dbgOM04F
	OOZGxWgeikjgBGHnv2MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrFf-0006Wt-OL; Wed, 15 May 2019 10:35:11 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrFU-0006Ek-NT
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 10:35:02 +0000
Received: by mail-it1-x143.google.com with SMTP id 9so3714468itf.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 03:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BRwFNJwPELqgHtWSrsoBmvxQAM4A14KrfNqfM1lTmjE=;
 b=UVnqQ5HCjtlGSCWEnK0PrOeHmF3rQVbE4FNtLS5Qd+EyQ10QvTjQYs8UU9/EnM7iuF
 Flinc54jtfsLL6SWK0xLXUXD0+NYm9RdCTX6xW5Nm8ix7e0+i4R6m5ESzd8sFUt7hK1t
 7h3rdBttjapchfLUsmhWOwC1bHic1bmeRxaKb9PhdH7nrDiIxiD77zhVzMCBx/L5kkXy
 hF517IeXXxa4TVTvqMRSHEOAVPsOhibf9yn8Tl9Z28182TaxuDMwtz8mMbE8zu63AKIY
 o6O/1HEDMnvs0XV1Qv9JHHTPGn/cM1XYerIV0++2x0PORjW/ssIEjW8MDXj7MdGbfDFa
 fMqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BRwFNJwPELqgHtWSrsoBmvxQAM4A14KrfNqfM1lTmjE=;
 b=HvVrtNpXIB2qQbkQmqTtR6KJh2/LMYUcflddWkllLLYHtfAUvNMqS9l0sQbvBUC5Jl
 +R/koQ0NdKxA1Z1dH1FbSH7jkCBUqgsKq54jeOzMrb0K6YmIPyhow35TMsf3UMpMvq7F
 FLL8yCDrnGtXPrEajebj8HyH7a7zzm6+5hJiotui7DkmPqST38ZjPqujESj8sFZ7C8UM
 AOAy8pHTwXLcUfnpliH4im7WcRvIyBgVou3ojb0Q5b78Gxob9+1U9IYEGn5qITXBbqWb
 /++MUqtpZ/Fe4IixIhWaShyikg+BlpayKwk+Z2j3Jqe4eceYV5puHpy/CAg/xkPg5Oxs
 Jfnw==
X-Gm-Message-State: APjAAAWyPeC9P6Wmli9k01bKZmGPSeAEZKDq1Hx5f174H1JQ0Ua8Sp6+
 KZx385/s8UroQ525PBb7+1IHLp86jSvWoC5qfXY74A==
X-Google-Smtp-Source: APXvYqyja1vMf+Q7ImHEcKROEwNdzLaekuwDrHwLb1kRzSjjbkQ7lzX57AiiYdQXlp5Tf/TGKnNBQGS3Y7IMrHVmLcs=
X-Received: by 2002:a24:734c:: with SMTP id y73mr7022540itb.74.1557916499327; 
 Wed, 15 May 2019 03:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190510162622.22068-1-kristian.evensen@gmail.com>
 <20190515101732.GA17721@meh.true.cz>
In-Reply-To: <20190515101732.GA17721@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Wed, 15 May 2019 12:34:48 +0200
Message-ID: <CAKfDRXjXNdfSwEcBh_LAKByhcXvdJp6owMgJ3sjwqH6jypvHSA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_033500_760274_159C0F31 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: Add support for Head Weblink
 HDRM200
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKClRoYW5rcyBmb3IgeW91ciBmZWVkYmFjay4KCk9uIFdlZCwgTWF5IDE1LCAyMDE5
IGF0IDEyOjE3IFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+ID4gSW4g
b3JkZXIgdG8gaW5zdGFsbCBPcGVuV1JULCB5b3UgZmlyc3QgbmVlZCB0byBjb21waWxlIGFuIGlu
aXRyYW1mcwo+ID4gKHJhbWRpc2spLWltYWdlIGZvciB0aGUgZGV2aWNlLgo+Cj4gVGhpcyBpcyBu
byBsb25nZXIgdmFsaWQsIHJpZ2h0PwoKQ29ycmVjdCwgd2lsbCByZW1vdmUgaXQgZm9yIHY0LgoK
Pgo+ID4gLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAx
X2xlZHMKPiA+ICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvYmFzZS1maWxlcy9ldGMvYm9hcmQu
ZC8wMV9sZWRzCj4gPiBAQCAtMTg0LDYgKzE4NCw5IEBAIGhjNTg2MSkKPiA+ICAgICAgIHVjaWRl
Zl9zZXRfbGVkX25ldGRldiAid2lmaTVnIiAid2lmaTVnIiAiJGJvYXJkbmFtZTpibHVlOndsYW41
ZyIgIndsYW4wIgo+ID4gICAgICAgdWNpZGVmX3NldF9sZWRfbmV0ZGV2ICJ3aWZpMmciICJ3aWZp
MmciICIkYm9hcmRuYW1lOmJsdWU6d2xhbjJnIiAid2xhbjEiCj4gPiAgICAgICA7Owo+ID4gK2hl
YWQtd2VibGluayxoZHJtMjAwKQo+ID4gKyAgICAgc2V0X3dpZmlfbGVkICIkYm9hcmRuYW1lOmdy
ZWVuOndpZmkiCj4gPiArICAgICA7Owo+Cj4gdGhpcyBjb3VsZCBiZSBncm91cGVkIHdpdGggb3Ro
ZXIgZGV2aWNlcy4KClRoYW5rcyBmb3Igc3BvdHRpbmcgdGhpcy4KCj4gc28gaWYgSSdtIGNvdW50
aW5nIGl0IHJpZ2h0LCB5b3Ugc2hvdWxkIHByb2JhYmx5IHJlbW92ZSBpMmMuCgpJZiBJIGhhdmUg
dW5kZXJzdG9vZCB0aGUgZGF0YXNoZWV0IGNvcnJlY3RseSwgdGhlbiBpMmMgaXMgcmVxdWlyZWQg
Zm9yCnR3byBvZiB0aGUgR1BJT3MgZXhwb3J0ZWQgaW4gMDNfZ3Bpb19zd2l0Y2hlcyAoaW8xL0dQ
SU8jMSBhbmQKaW8yL0dQSU8jMikuCgpCUiwKS3Jpc3RpYW4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
