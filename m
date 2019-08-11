Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9EA89119
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 11:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u39ZpqY6VAllABqSCE8cnOGPw+ndX1JJ60ZiiKbx/tk=; b=M8krBOxlN/xFDYTSOCwXzOBy7
	7jSQLm+n65Hz1PGIDOLXijB7sHw6758RAP23mjD592h5aFLaVDNWE0YUbqK3Bnu69YKL9vIVBELb4
	kYUz7LzlXJ2mZWAsPRzisRd6bpxTuICjJjq7xxJCIkjQRn6rcp2g5r77YJbYmOgjBi2cHL50YWF7T
	HjgjeZrmh8wjx3TcRQQ0wFbCcbjvjnGq8FiGSSo5nWGjFb8tv5YUWi7mAK6TR1AAsp8IkRj2h+oQw
	c80h2uDJvtGMp3X6KtCOmjbaVEYg0Pm9p924n7/vAFrhnVgA5E0mJvUWUbjhUvcWrraij8Xhx5DSH
	g8i/2wybg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwkHg-00011I-WD; Sun, 11 Aug 2019 09:37:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwkHV-00010w-Az
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 09:36:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so9320109wmf.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 11 Aug 2019 02:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=XMyJWaye1y+wXpE4rYvx6vlw+whS0Ljx5ZhilrNlMhY=;
 b=FnajAVKX2hDwOXoflaBLl3GEddAUVUQ2Gin1FViEux7tB8BLKDdFP2VY/PbOgYGBcl
 HbbDTXrkjfxED53JPNZLVctf6qCIHvsSKvpBlZNlDFXq9qowEJbzq0EvKO93CSnV58cL
 ynX+NiEGWumUdlmZ3lXCzzHxt9r/DemBYfKexzhSMiwvgsTspyJr01zClQ/fjzHp6yt3
 Y7rin3TanreNFoXCqbqr2tKqx1sPbGkDdLdPTobt5gvwhpz+bDtNQ9D1SYjMd1PinJlN
 4VV2s+CoM4UUwtVdgAJ4QPXzGE21ChX7iBy5kobqD/N23RxycLP1lJJKCCoQvzdaJYsj
 kZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XMyJWaye1y+wXpE4rYvx6vlw+whS0Ljx5ZhilrNlMhY=;
 b=V0lCR/n5CPx4DpuUjUXJ9FZ9PINBbKZkJLWiIRVoEecpbepsWr76WSyqVxqnSAhum2
 3MnxtS4bFhguzemlpfg7APL9nT0lMo0jIlDjrQaemZA/ehnx2hVFGwnngMjeZ5UjPHpC
 Ru1l2PyQtG2XCjHCy6xznQNedXS35+9EfaQ3hqOtx+pB2DWeBTk7Ox+7e3k9BK+7PvFj
 /GEzOYMWAuv9TRYyfS2YMcRQdI4MWHU+sV91VZAuJYjTSnyR9x8ILu4Eu0UwFtIBTefA
 6mL9Ytt8NKLWgmLPtPtii4qZfpGbwyvLC2VD1vx2LNo9Mvb6tz034E+KZfXqQFBCxVGc
 0DrA==
X-Gm-Message-State: APjAAAWlJV0MGpQJvRkzORCx/ftgAUXFApAUVajJe7/j7qk6ICa1Ml93
 wA/0sHnd9jBZx0P+galzQ6gOOQ==
X-Google-Smtp-Source: APXvYqyzrT2dK60ILMU0nZIaBjB0c+76DbkLJtRC7cT2LvmO27aR95ffHyAC3fp0HG/lLcR9qt/wQw==
X-Received: by 2002:a7b:cbcf:: with SMTP id n15mr7056596wmi.48.1565516208754; 
 Sun, 11 Aug 2019 02:36:48 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f18:2300:b015:2ed8:4bbb:9f7?
 (p200300EC2F182300B0152ED84BBB09F7.dip0.t-ipconnect.de.
 [2003:ec:2f18:2300:b015:2ed8:4bbb:9f7])
 by smtp.gmail.com with ESMTPSA id i18sm132550616wrp.91.2019.08.11.02.36.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 02:36:48 -0700 (PDT)
To: Birger Koblitz <mail@birger-koblitz.de>, openwrt-devel@lists.openwrt.org, 
 pepe2k@gmail.com
References: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me>
Date: Sun, 11 Aug 2019 11:36:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_023653_382345_8A7F72FC 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use gpio_hog instead of
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

MDIvMDgvMjAxOSAxMTo1OCwgQmlyZ2VyIEtvYmxpdHo6Cj4gcmFtaXBzOiB1c2UgZ3Bpb19ob2cg
aW5zdGVhZCBvZiBncGlvLWV4cG9ydAo+IAo+IFRoZSBgZ3Bpby1leHBvcnRgIGZ1bmN0aW9uYWxp
dHkgaXMgYSBoYWNrIGZvcgo+IG1pc3Npbmcga2VybmVsIGZ1bmN0aW9uYWxpdHksIHdoaWNoIHdh
cyByZWplY3RlZCBpbiB1cHN0cmVhbSBrZXJuZWwgbG9uZwo+IHRpbWUKPiBhZ28sIGZvciBkZXRh
aWxzIHNlZSB0aGlzIGVtYWlsCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWls
L29wZW53cnQtZGV2ZWwvMjAxOS1GZWJydWFyeS8wMTU3NzIuaHRtbCwKPiBkaXNjdXNzaW9uIGlu
IFBSIzEzNjYgb3IKPiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMTgx
NCNpc3N1ZWNvbW1lbnQtNDYyOTQyMDIyLgo+IAo+IFRoaXMgcGF0Y2ggY29udmVydHMgYWxsIHJl
bWFpbmluZyByYW1pcHMgLmR0cyhpKSBmaWxlcyB3aGljaCB3ZXJlCj4gdXNpbmcgZXhwb3J0LWdw
aW8gYW5kIG5vdCBtYWtpbmcgdXNlIG9mIHRoZSBjaGFuZ2UtZGlyZWN0aW9uIGZ1bmN0aW9uYWxp
dHkKPiB0byB1c2luZyBncGlvX2hvZyBpbnN0ZWFkCj4gCj4gU2lnbmVkLW9mZi1ieTogQmlyZ2Vy
IEtvYmxpdHogPG1haWxAYmlyZ2VyLWtvYmxpdHouZGU+Cj4gCj4gLS0tCj4gCj4gZGlmZiAtLWdp
dCBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYyMGFfYWxmYS1uZXR3b3JrX3R1YmUtZTRn
LmR0cwo+IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIwYV9hbGZhLW5ldHdvcmtfdHVi
ZS1lNGcuZHRzCj4gaW5kZXggNDA5N2RjNjE0MC4uZWEwZDk4MDFjMSAxMDA2NDQKPiAtLS0gYS90
YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjBhX2FsZmEtbmV0d29ya190dWJlLWU0Zy5kdHMK
PiArKysgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9tdDc2MjBhX2FsZmEtbmV0d29ya190dWJl
LWU0Zy5kdHMKPiBAQCAtMjEsMzkgKzIxLDYgQEAKPiAgwqDCoMKgwqAgwqDCoMKgIGJvb3Rhcmdz
ID0gImNvbnNvbGU9dHR5UzAsMTE1MjAwIjsKPiAgwqDCoMKgwqAgfTsKPiAgIAo+IC3CoMKgwqAg
Z3Bpby1leHBvcnQgewo+IC3CoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUgPSAiZ3Bpby1leHBvcnQi
Owo+IC3CoMKgwqAgwqDCoMKgICNzaXplLWNlbGxzID0gPDA+Owo+IC0KPiAtwqDCoMKgIMKgwqDC
oCBtb2RlbS1lbmFibGUgewo+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9ydCxuYW1l
ID0gIm1vZGVtLWVuYWJsZSI7Cj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG91
dHB1dCA9IDwxPjsKPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpb3MgPSA8JmdwaW8xIDEyIEdQ
SU9fQUNUSVZFX0hJR0g+Owo+IC3CoMKgwqAgwqDCoMKgIH07Cj4gLQo+IC3CoMKgwqAgwqDCoMKg
IG1vZGVtLXJmLWVuYWJsZSB7Cj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG5h
bWUgPSAibW9kZW0tcmYtZW5hYmxlIjsKPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1leHBv
cnQsb3V0cHV0ID0gPDE+Owo+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwmZ3BpbzAg
MTIgR1BJT19BQ1RJVkVfSElHSD47Cj4gLcKgwqDCoCDCoMKgwqAgfTsKPiAtCj4gLcKgwqDCoCDC
oMKgwqAgc2ltLXNlbGVjdCB7Cj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG5h
bWUgPSAic2ltLXNlbGVjdCI7Cj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG91
dHB1dCA9IDwwPjsKPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpb3MgPSA8JmdwaW8wIDEzIEdQ
SU9fQUNUSVZFX0hJR0g+Owo+IC3CoMKgwqAgwqDCoMKgIH07Cj4gLQo+IC3CoMKgwqAgwqDCoMKg
IHNpbTEtZGV0ZWN0IHsKPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1leHBvcnQsbmFtZSA9
ICJzaW0xLWRldGVjdCI7Cj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlvMCA5
IEdQSU9fQUNUSVZFX0hJR0g+Owo+IC3CoMKgwqAgwqDCoMKgIH07Cj4gLQo+IC3CoMKgwqAgwqDC
oMKgIHNpbTItZGV0ZWN0IHsKPiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1leHBvcnQsbmFt
ZSA9ICJzaW0yLWRldGVjdCI7Cj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlv
MiAxIEdQSU9fQUNUSVZFX0hJR0g+Owo+IC3CoMKgwqAgwqDCoMKgIH07Cj4gLcKgwqDCoCB9Owo+
IC0KCkhleSBCaXJnZXIsCgpzaW1pbGFyIHRvIG15IGNvbW1lbnQgZm9yIHRoZSBsYW50aXEgdmVy
c2lvbiwgdGhpcyBkb2Vzbid0IHdvcmsgYXMgd2VsbC4KCkFGQUlSLCB0aGUgVHViZSBlNGcgaGFz
IHR3byBzaW0gY2FyZCBzbG90cyBhbmQgdGhlICJzaW0tc2VsZWN0IiBncGlvIGlzIApzdXBwb3Nl
ZCB0byBiZSB1c2VkIGZyb20gdGhlIHVzZXJzcGFjZSwgdG8gc2VsZWN0IHdoaWNoIHNpbSBjYXJk
IHNsb3QgCnNob3VsZCBiZSB1c2VkLgoKSWYgd2UgaG9nIHRoZSBncGlvLCBpdCBjYW4ndCBiZSBt
YW5pcHVsYXRlZCBmcm9tIHRoZSB1c2Vyc3BhY2UgYW55bW9yZS4KCkkgaGF2ZW4ndCBoYWQgYSBj
bG9zZXIgbG9vayBhdCB0aGUgcGF0Y2guIFRoZXJlIG1pZ2h0IGJlIHNpbWlsYXIgaXNzdWVzIApm
b3Igb3RoZXIgYm9hcmRzLgoKQFBpb3RyIGNhbiBjb25maXJtIHdoYXQgSSBtaWdodCB0byByZW1l
bWJlcj8KClJlZ2FyZHMKTWF0aGlhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
