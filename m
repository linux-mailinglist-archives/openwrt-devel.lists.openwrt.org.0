Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4453E24CD2
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 12:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2o7V2c5T9MU0zbxR3siixm5mciYgvEQHwMFvVgtimVI=; b=i6qQFPu7SxLsvfQulV4MAQl2W
	qbekkH5SNPVUxPw319C92ELIVIOGuZS+YxcFwHFINVon5pBIr+s0RYxGqb4LtZaGT03Z6FpI7OikL
	CqyjlL1KWZG9v6XDi/LG5mQSDcHbk872IpEBQjCKa9RiVbpj+2HzgMXFk5S06D6Mmz1mJnaFoU0+7
	DS863NLvTGYMndV2pNirHhGtFt1dwa1hYTgtnrLD3QNuQ+SrDAt8O3M4lFZcScT9xf9GLCSeRbsdK
	wxUqDAKx6+t4W15auPprUPCNH5YwUFH+nq8jKJgUSafuo/aPUX/9lV+tuUvaTRtaY7AjVmB/qwDKT
	Tfs64mC3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT27R-0001ps-0D; Tue, 21 May 2019 10:35:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT27L-0001pT-9g
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 10:35:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so18001096wrs.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 May 2019 03:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=3dysjZ7O63rB2YK3V1aMr5fmeWx4d+8zRb5xQH4FXqU=;
 b=ktwqmg9/53Dw/mlMQmEU3sG7eQQW5TObFftyEqJtgI3Smw0/EI4SWzrdQwoQe4NUca
 tK64Ryo2EJnvMF2Ncqvv1T0by2MlZ+zLs7O36Bb4ZTDNq68wEgd/TpfS5wcGxty1i2Yx
 MaRMr72PUWXQUwMKrfVYhLMDIn4L0v471R99Uqc0e40Ran9WTRNbeOZJjX4ds2U6lQnc
 ex+BLkSBPe+PVnWwzm/FFc1SDlW+P+ou+GYlaJVS8zhTkffpTVlYzud0W67+eYzmI/Q4
 dyfrXDMOnfx3N67uGrtpGeIDusIgOThIaxwrDnwhz/89oY2DMKDNy5BamePCe4KRkbDW
 HcmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=3dysjZ7O63rB2YK3V1aMr5fmeWx4d+8zRb5xQH4FXqU=;
 b=DUI5/oknzrTACt6AP/bAbwSUscSVPsLB7NHn0TOy+Vw7XlRfEjtq23EQOj8FqtVtWv
 9BfAAtDtNxktXR/ToOQ4uuy4gtN58DJEVSn6qvCKTnh2aCjOEQmoX3oLbS5/QKPJINOi
 b8omvcV66CeDbEPMAAROSh4xKpMR59bMPpvHqse8yg54MPI4M1nBd1R03T5GnRtT13KX
 E/2AbQp3fLjy2Dqono0FXmbW5WSEcncS7lIFWRlMCISMV3rqDmriQrGYqVzeyIKFilK2
 76Dqu/jAs7CQPHOnSW6aIhePX0imYiEBks5P8fsSXNPX69QpcKdtG8KkAMCVomunI8Rc
 +tOQ==
X-Gm-Message-State: APjAAAWzM0TRIHlnciqr1d1JJ96Rvu9vYalqT+sRXA8eUpS88Khj5DM4
 WfEn9HSzG26stKbFwhKc+xI=
X-Google-Smtp-Source: APXvYqysX+gVi9DZKJ0EOxPBr0sn1abPw1QKLY1RcZkKAL18ixjOInIo7bWdJ74Gkkj967CKFXFdpQ==
X-Received: by 2002:adf:f743:: with SMTP id z3mr3431706wrp.129.1558434933630; 
 Tue, 21 May 2019 03:35:33 -0700 (PDT)
Received: from [192.168.111.140] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id o11sm8874500wrp.23.2019.05.21.03.35.32
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 03:35:33 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
 <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
 <20190521091326.GK63920@meh.true.cz>
 <bc46acbe-c9f0-77e6-7218-a6b8465a59f0@gmail.com>
 <20190521101142.GL63920@meh.true.cz>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <d14ae776-05a1-0e81-2fad-1511dfc786ad@gmail.com>
Date: Tue, 21 May 2019 12:35:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521101142.GL63920@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033535_356804_DE2B9675 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Documentation in the tree? [Was: Re: [PATCH v3]
 gemini: Support sysupgrade on DIR-685]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>,
 Javier Domingo Cansino <javierdo1@gmail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Thomas Endt <tmo26@gmx.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDIxLzA1LzE5IDEyOjExLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IEFsYmVydG8gQnVyc2kg
PGJvYmFmZXR0aG90bWFpbEBnbWFpbC5jb20+IFsyMDE5LTA1LTIxIDExOjM3OjMxXToKPgo+PiBU
aGUgb25seSBjbGVhciB0aGluZyBpcyB0aGF0IGRvY3VtZW50YXRpb24gZG9lcyBub3Qgd3JpdGUg
aXRzZWxmIGFuZCB0aGF0Cj4+IHlvdSBjYW4ndCByZWx5IG9uIHVzZXJzIHRvIHdyaXRlIGRldmVs
b3BlciBkb2N1bWVudGF0aW9uLgo+IFlvdSBhY3R1YWxseSBjYW4gZW5mb3JjZSBpdCBzb21laG93
LCBhcyB5b3UgZWl0aGVyIGluY2x1ZGUvdXBkYXRlCj4gZG9jdW1lbnRhdGlvbiB0byByZWZsZWN0
IHlvdXIgY2hhbmdlcyBvciB5b3VyIGNvbnRyaWJ1dGlvbiB3b24ndCBiZSBjb25zaWRlcmVkCj4g
Zm9yIG1lcmdlL3Jldmlldy4KPgo+IEl0J3Mgbm90IGEgcGFuYWNlYSwgYnV0IGl0IHdvcmtzIHJl
bGF0aXZlbHkgd2VsbCBpbiB0aGUga2VybmVsIChEVCBkb2NzIGZvcgo+IGV4YW1wbGUpLgo+CgpB
bmQgdGhpcyBjYW4ndCBiZSBkb25lIHdpdGggdGhlIGRvY3MgaW4gYSB3aWtpIGJlY2F1c2U/CgpU
aGF0J3MganVzdCBhbiBpbXBsZW1lbnRhdGlvbiBkZXRhaWwuCgpXaGF0IG1hdHRlcnMgaXMgdGhh
dCBzb21lb25lIGlzIGVuZm9yY2luZyB0aGUgcnVsZSB0byB3cml0ZSBhbmQgdXBkYXRlIGRvY3Mu
CgpUaGlzIGlzIHdoYXQgaXNuJ3QgaGFwcGVuaW5nLgoKCj4+IHdpdGggY29tbWl0IDg4MmY0ZDJk
NjMyNzJhYmNlOGMxOTY2OTgzYWExMDE3OGUyZTk3MWYKPj4gYXMgaXQgd2FzIGhvcnJpYmx5IG91
dGRhdGVkIGFuZCBjb21wbGV0ZWx5IHVzZWxlc3MKPiBNYXliZSwgdGhhdCBhdCB0aGF0IHRpbWUg
R2l0SHViIGNvbnNpZGVyZWQgVGV4IGJpbmFyeSBmb3JtYXQgYW5kIHRodXMgd291bGRuJ3QKPiBh
bGxvdyB3ZWIgYmFzZWQgUFJzLCB0aHVzIGxpbWl0aW5nIHBvdGVudGlhbCBjb250cmlidXRpb25z
PyA6LSkKClllYWgsIGJlY2F1c2UgYSBsb3Qgb2YgcGVvcGxlIGNvbnRyaWJ1dGVkIHRvIHRoZSBM
RURFIHNpdGUgd2hlbiBpdCB3YXMgCnNvdXJjZSBpbiBHaXRodWIuCgpHaXRodWIgd2ViIGludGVy
ZmFjZSBpcyB0cmFzaCwgYW5kIGl0J3Mgbm90IHVzZXItZnJpZW5kbHkgZXZlbiBmb3IgY29kZSAK
Y29udHJpYnV0aW9ucy4KCkl0J3MgY29tcGxldGVseSBhbGllbiBmb3IgcGVvcGxlIHRoYXQgd2Fu
dCB0byBjb250cmlidXRlIGRvY3MuCgoKCj4gSSB0aGluaywgdGhhdCB5b3UgZWl0aGVyIGhhdmUg
YXBwcm9hY2hhYmxlIGRvY3VtZW50YXRpb24gZm9ybWF0KE1hcmtkb3duL1JlU1QpCj4gYW5kIHRv
b2xpbmcgYXJvdW5kLCB3aGljaCB3b3VsZCBhbGxvdyBlYXN5IGNvbnRyaWJ1dGlvbnMgb3IgeW91
IGVuZCB1cCB3aXRoCj4gdGhlIG91dGRhdGVkIGRvY3VtZW50YXRpb24uCj4KPiAtLSB5bmV6egoK
ClRoZSB3aWtpIGlzIHdvcmtpbmcgZmluZSBmb3IgdXNlciBkb2N1bWVudGF0aW9uLCB3ZSBoYXZl
IHBlb3BsZSB0aGF0IApyZXdvcmtlZCBhIGxvdCBvZiB0aGUgZG9jcywKCmxpa2UgZm9yIGV4YW1w
bGUgdGhlIGZpcmV3YWxsIHNlY3Rpb24gd2FzIGNvbXBsZXRlbHkgcmV3cml0dGVuIHRvIHVwZGF0
ZSAKaXQsCgphbmQgdGhlcmUgaXMgcmFuZG9tIHBlb3BsZSB0aGF0IGFkZCBzdHVmZiBldmVyeSBu
b3cgYW5kIHRoZW4uCgpUaGVyZSBhcmUgYSBjb3VwbGUgc2VtaS1vZmZpY2lhbCBtYWludGFpbmVy
cyBmb3IgVlBOIGFuZCBvdGhlciBob3QgdG9waWNzLgoKKGFuZCBJIGtub3csIEknbSBub3RpZmll
ZCBvZiBFVkVSWSBlZGl0IEFOWU9ORSBkb2VzIGluIHRoZSB3aWtpKQoKClRoZSBvbmx5IHRoaW5n
IHRoYXQgaXMgbGFja2luZyBpcyB0aGUgZGV2ZWxvcGVyIGRvY3MsIHdoaWNoIGFzIEkgc2FpZCAK
Y2Fubm90CgpiZSB3cml0dGVuIGJ5IHVzZXJzLCBubyBhbW91bnQgb2YgYWRkaXRpb25hbCB1c2Vy
LWZyaWVuZGxpbmVzcyB3aWxsIGhlbHAuCgpJdCBoYXMgdG8gYmUgd3JpdHRlbiBieSBwcm9qZWN0
IG1lbWJlcnMgb3IgY29udHJpYnV0b3JzIHRoYXQgYWN0dWFsbHkgCndvcmtlZCBvbiB0aGUgY29k
ZS4KCgpTaW5jZSB0aGlzIGlzIGEgcHJvamVjdC13aWRlIHRoaW5nIHlvdSBuZWVkIHRvIGRlY2lk
ZSBpdCBhbW9uZyAKeW91cnNlbHZlcywgYW5kIHRoZW4gc3RhcnQgd3JpdGluZyBpdAoKb3IgZW5m
b3JjZSB0aGUgcnVsZXMgb24gY29udHJpYnV0b3JzLgoKCi1BbGJlcnRvCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
