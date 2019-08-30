Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ACBA3107
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 09:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vnBh0asS8Gz2To99bYzZeNQIO+Sk3b7HBfKT9bLr8/U=; b=MPM+keUhNYg/Jx9wLmbP4L0VX
	kIcjnZ992i7gwbeAjEURv60ZBS4Xx4Shkz0D16pqdf9iKdCd3rZZ9aVMLrmhUPLMP4EyOY1hvuWWy
	Jq95wC+Mv6pqMv3Yb+BwOUMFYxODGcC239I6BVtN9nEn1klPqAp/LcpZla/R3qzdZmpNBHOoA3dpn
	JVD0z+AgLKffCyORJJjHaXOYI06Qv1ej4KWEFy4bWwI+sAa9MfS5Kmg4K0P2nS/n8xj8JaS7bd47F
	3i+XutQinQ580p9pqe+m1huroxDmWefQaPEye6dTlRLrfJX4plWRRzsuzInLybdB6gyFDMHn8CkV0
	jsjnm1RmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bN3-0006dG-Oo; Fri, 30 Aug 2019 07:30:57 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bMt-0006cw-Q2
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 07:30:49 +0000
Received: by mail-lf1-x141.google.com with SMTP id u13so4558261lfm.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 00:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I/6MDXzXe8ikU+ltTf1LL6hgwmrJVvFywJBovjhto2A=;
 b=FojnvB6DK/BRylEB10+lTrSQHXxVFoUTwI74p/ojbpLEmTGTqLy7ovcOkzm5dWp9fW
 ngMq9QL+Qn1D75KJwxlLkf4yxD5eX2hiRjMH+CUdhVNxuWo6LxMyBIuFyD+kJB9I/Jej
 U6ZA1AiURIBR02iJv4pZahgbxjl261JUPqSETbuBATK1tsZ2LqiOdxi2H9Cu6xv7+6sU
 MBZrD8IYBJUrcLKJT/UDuH83HSb38k8eSv2YBkLKn61BbqYmpXjlkwMhUG1o6di8faCQ
 jpM5cFgve0B4Gl3GmOIxrgEV19QdL/gDLTiV8axqQF77JrMMi2MEJ7WyEY/DvJ0xR5uu
 LmUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I/6MDXzXe8ikU+ltTf1LL6hgwmrJVvFywJBovjhto2A=;
 b=tZgl0s9QcdoetACywOYNtZLsIkKIScG65nGsLkHYha3oc6Mm6jU1bt534sbCTiMhBD
 5JmNt6zeSLxW8vgcJWQekRu5LOKfiRjzExegXWkRhatqvM76EpH0X8eiOIsXBfwuCIFH
 vphnJ3S+ZnitWmoMYPs4eKNMfS3OlqHftOXF5n7QpN64P6am2CR6B4Djgka6yVVtmMJP
 kTk56RcdeF5Sd/vj1i7HPgdYeYhGwJGrAg5HQRs5na3LcbqcjvV3Bi8g5ssbUwa1SIr8
 d83Pv481lMQvac4WMUqh1wCJ9ghhTV8SjzvCBCwynFhSlF9dImLOs2PlLqu0XbRoCadf
 h7vw==
X-Gm-Message-State: APjAAAW9AAQOZAaSZu5u/NtQF+U2BrCuTXvlW7dJZPMRoUItgui+MzNI
 zDcb5CNNiMgjmvTKRHRrSfI=
X-Google-Smtp-Source: APXvYqxIUMvgLXJzNzSU1IJ/EAUTAGY8vzOQWfYyhNCUBb7fmsMTB+tfc7REaNkAsQUpOTqUZdGoyw==
X-Received: by 2002:a19:ef14:: with SMTP id n20mr8663937lfh.82.1567150245596; 
 Fri, 30 Aug 2019 00:30:45 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id h9sm728707lfp.40.2019.08.30.00.30.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 00:30:45 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org, John Crispin <john@phrozen.org>
References: <20190830072834.23213-1-zajec5@gmail.com>
Message-ID: <aaa6145e-a46d-5252-f7fe-9818fff320ff@gmail.com>
Date: Fri, 30 Aug 2019 09:30:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190830072834.23213-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_003047_848364_4E9B11EC 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: add
 "validate_firmware_image" ubus method
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Jo-Philipp Wich <jo@mein.io>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMzAuMDguMjAxOSAwOToyOCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IFRoaXMgbmV3IG1l
dGhvZCBhbGxvd3MgdmFsaWRhdGluZyBmaXJtd2FyZSBpbWFnZSAoc3RvcmVkIG9uIGEgZGV2aWNl
KQo+IHVzaW5nIHVidXMuIEl0IHVzZXMgbmV3IGV4ZWN1dGFibGUgaGVscGVyIHRoYXQgcHJvdmlk
ZXMgZGV0YWlsZWQgaW5mbwo+IGFib3V0IGZpcm13YXJlIGltYWdlLgo+IAo+IFRoZSBwb2ludCBv
ZiB0aGlzIG1ldGhvZCBpcyB0byBhbGxvdyB1c2VyIGludGVyZmFjZXMgcHJvdmlkZSB2YXJpb3Vz
Cj4gaW5mbyBiZWZvcmUgc3RhcnRpbmcgYWN0dWFsIHVwZ3JhZGUgcHJvY2Vzcy4KCkV4YW1wbGU6
Cgpyb290QE9wZW5XcnQ6LyMgdWJ1cyBjYWxsIHN5c3RlbSB2YWxpZGF0ZV9maXJtd2FyZV9pbWFn
ZSAneyAicGF0aCI6ICIvdG1wL29wZW53cnQtYnJjbTQ3eHgtbWlwczc0ay1zdGFuZGFyZC1zcXVh
c2hmcy50cngiIH0nCnsKCSJ0ZXN0cyI6IHsKCQkiZnd0b29sX3NpZ25hdHVyZSI6IHRydWUsCgkJ
ImZ3dG9vbF9kZXZpY2VfbWF0Y2giOiB0cnVlCgl9LAoJInZhbGlkIjogdHJ1ZSwKCSJmb3JjZWFi
bGUiOiB0cnVlCn0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
