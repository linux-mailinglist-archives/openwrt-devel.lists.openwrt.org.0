Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2D01EEA0
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 13:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDo0KO3bQ0CvUFh1iH9DZFRX2/VQE46BqPtjjCV/mnw=; b=e4A92X45jHvFwr
	VFf8eY8MT9qhCUMLZjxhwC6V10yGaXFuQyRtod04D45y3y5wxMBa6jcAbZBan2a7qEmIWfa+zFwJD
	KLHI3Pe1195OQ8pX4MBSDvKuTjjdQkoGsqDZx4GmlLCweW+prBC99Wk7W7xPRZlqMuE1queQlzM4e
	2j7FnTSjWx+SQBgphTizug+AVV04Q45qTuv9qOKQZu1lhTMKZ3sfQrrD47POMAoiyDKCT80YzPWs+
	t1Dnqn+Ik8ARF+DfdNZ33i0g8f3HxajFJ2f5JgJ8jhI0UpDTEEApj2vtMUWfehazScuMS1n6fVsJ5
	K/B1+W80HAKZ0TPLOdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQs17-0005B9-6u; Wed, 15 May 2019 11:24:13 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQs0w-0005AW-Gb
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 11:24:04 +0000
Received: by mail-it1-x141.google.com with SMTP id i63so3917724ita.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 04:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C8rcLlRmYhkpOIEZFGzRohwgPKj6CWOpS7woX+1y2+M=;
 b=uIPzCc+UT+CQADZOlRPGh4RbKUQl+HAFzZA/64OjcXtuYhQ47N+sMKDttyvYccwOOe
 3wJEH+2IRtVx8yDQEhbG8vjT9wV4RILhB1fO3pzcc3QkeEVo3rs75cDWtwVQA6yCiZJw
 adKfbRPIMHcAj/zDLk0QgQsa02DWenCWSUzjuHkHOdwvtMLpM0FWe8Ie6j7gtcoLTTi6
 nViVnwx7mU2f8gkUzs0VYFrKptZRdj48Ol6zPjyEO5T5WV4E9zMUXR8Tf8IeSZUs2cSX
 dObzPNiebeBoqn4UR9nZioDX4jyR74vgB12JIuxAZGugBcmquzFDujirtyi/mawgwJB/
 0AOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C8rcLlRmYhkpOIEZFGzRohwgPKj6CWOpS7woX+1y2+M=;
 b=Egqx9AyQJ6zqzvvhXlr1qVHjq1ZKsJyVUOIT09nW0c1TYoyRIti3awzCW/IsivAbzy
 YoDgl4USFG7HJHs7S2K/Ng9/CM8CTIk7XYtKpt9ws9jzC4/IqKMhbUO9dKQDnVNUO2Xj
 Lv1PNYGJ1X5+WYHGoX3PK7R9G0s1IYez5en9XRJRsguYdH/neQKX/2DJJd3EZeIygo0H
 sdi5b1IB3X6hrrbOC3G4/+9/bvpqib9g2Z9adBC+CvPdewbk3RAtI7wP2S1BOgQpXF/U
 kLvbukpF9/wyqVIGTZTbStMf9Hae9guVncmIUa+ZGwIG4pvf2aBHmE3w6F2SHGEmjfj/
 cgpw==
X-Gm-Message-State: APjAAAWGYABaDYooeJeuUq9VjwP/KW55HB82vCZrRPkwVSRS5pfnnpgM
 DOs1GWfZbqkGQImXLfTcvEEh/UqP2W7yueTrxIkrmQ==
X-Google-Smtp-Source: APXvYqz/UsIjB5OOZd+6e8hLo4a3XU0gVqi6Q34FoMHtIrYCaRMNuTMWpFAB+fKoo0MoEgP+8kyzC/92DtmgcLkLnUw=
X-Received: by 2002:a02:6411:: with SMTP id t17mr27731138jac.90.1557919440252; 
 Wed, 15 May 2019 04:24:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190510162622.22068-1-kristian.evensen@gmail.com>
 <20190515101732.GA17721@meh.true.cz>
 <CAKfDRXjXNdfSwEcBh_LAKByhcXvdJp6owMgJ3sjwqH6jypvHSA@mail.gmail.com>
 <20190515104159.GA30259@meh.true.cz>
In-Reply-To: <20190515104159.GA30259@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Wed, 15 May 2019 13:23:49 +0200
Message-ID: <CAKfDRXiME4PT4RztYHhDdF3aPmxSCQVSMiWeUjBQU7Q1vPh+gA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_042403_463655_5E286404 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMTI6NDIgUE0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4gWWVzLCB5b3UncmUgY29ycmVjdCwgSSd2ZSBtaXNzZWQgdGhpcyB1c2Vy
c3BhY2UgR1BJT3MuCgpUaGFua3MgZm9yIGNvbmZpcm1pbmcuIEkgd2lsbCBzdWJtaXQgYSB2NCBk
dXJpbmcgdGhlIGFmdGVybm9vbi4KCkJSLApLcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
