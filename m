Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1611EDE76
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 09:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PlvJkmqzIm3sNRULrvQZDu7aB+i93J3DysQfhDs3MRc=; b=KxkoOclcRYGQy6
	599OBx0DAVICwt9H4tGjC6NMkyDw19rJEbhXV2bUZzeggy7p6605MMfpRVhCxzN0rpn4yj1rs62Dx
	vgo2RF7DBQokxp6TEQ//O9b7RZaRgN8X4ZdX7IfQesCbGFcLjypynsOTdvv43mkL6/mC3EYJvEeuy
	ZzsoTXmbhAYGczoMqrDSjtajF4nrrgLlJx4oJJ9HsfMRKnd69z7+djxJ/a8YNpT/070O7liB57VtY
	TFVCBxlBxf9Hw6R+gLlAvNdzT6ukMvoL9XrGDHoxXFpAXxTiQiZlvoWPsCuSNJ/RvV4wuFcuAwyUt
	WvhRBy2uX8L85kcGFw/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkOa-000169-Vn; Thu, 04 Jun 2020 07:34:36 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkOI-00014j-5D
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 07:34:20 +0000
Received: by mail-wr1-x429.google.com with SMTP id e1so4934892wrt.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 00:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=qHRJsmvm0BDQeGttNLClO3aK6/56fiScP/pJpB7X8q4=;
 b=ETUZob1oo2O/Q6zBUCG54ZWqtSLntv+at+ddVZKXGvSoYYYKgQRLkBPZGq9Y0KPQ8P
 bWCqWczH6OoMi3BYxNH1vNWbqzV5EQmN9tzwQ+DjHyWexb26ol2ymCBBIayb4rq+O+aP
 4Iilt+S1BWZ8mPK8OHU1jqGji4qWAe7Hsf0tvfxYbfOyp+ay00gulA00WRdVavkRz9UB
 pZQ/z9uatjnZcd3Y7+p27ur5RTA6JmrZS8mKYCjHjNvWnM6BccZCqsEWi5IGpVHg4IlZ
 8A4SUmXKvCLSsAs5utbcZYDCbrL42H8AZMhDLSd4fDc0EvokCyyiyXEt0atnLxUhD9Il
 Oe1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=qHRJsmvm0BDQeGttNLClO3aK6/56fiScP/pJpB7X8q4=;
 b=fdKmm4wowRpzwn4MDSA/3we3ZY1APSr6B0kjnvvZ39BtW34QUMZ1lurANhG0GGFke/
 bITdHUI9YPVBb5LSJiu4A1l97PPPXjTbQMQ3AmsNVD/8+aBwhLysMvGFG6bfqY5c8yP+
 62/aIvvv5Hwfc9M7xo0xzTcgWivSuxREfO0XaPe+bqTp45ZmTNAkA5pJf+rS51vZZ4zu
 IFw7XS5p5lMA48NFuSM85cnGtwIdwu5vJTRKQWHnVddZGrW2T8xIz3SnXLOh7v3h5O9O
 DBsU7yAKeW9QscbeOCqAlWP6f+hTfGdcwGzdZ3S/VARsB3nvGwVxC4apUONfqJm+StSH
 GU3g==
X-Gm-Message-State: AOAM532XKSKov1HEFRNaA9n+hEQqv/AAP8nT4BS4QfrAVPfZTWUvArbS
 lOaNPLP1+juQ/7/MZNj+t0QUVobRvvc=
X-Google-Smtp-Source: ABdhPJyMuH5bUK+wr8fcKcxDXxxrSnfriiJ2HX43VJR3wUB1wQ/wk6v/hXOkpEG3MfQg2GWo7z+Osg==
X-Received: by 2002:a5d:4701:: with SMTP id y1mr3001138wrq.310.1591256055847; 
 Thu, 04 Jun 2020 00:34:15 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id c81sm6325415wmd.42.2020.06.04.00.34.15
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 00:34:15 -0700 (PDT)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <5aadf921-9bbb-8f08-2c12-1507c6c6d98e@ncentric.com>
Date: Thu, 4 Jun 2020 09:34:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003418_225184_81B9D80A 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] cns3xxx and kernel 5.4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi All,

I've tried to bump this target to kernel 5.4 but failed to do so twice.

This target is not DT aware at all and the amount of efforts required to 
do so are tremendous, which I cannot justify internally here.


Giving the facts that:

- The huge amount of effort required

- The SoC itself reached EoL at Cavium for some time now.

- Upstream removed some important parts as it's also slowly getting EoL 
over there

- Internally in the company here, the product that used this will fade 
out shortly

- The amount of download for this binary suggest that the target is not 
that popular


I have decided to not invest more time in this one myself.

I would like to propose to either remove it for the next release, or 
make it source-only for some time excluded from the builds

should someone else would like to invest more time in it.


Either way, this target is the last one without 5.4 support and it 
should not delay the process any further.

Regards,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
