Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672288C0EA
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 20:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MelK6PQAsPUNn3GyjzBRmR6BTLDXXwInDUkaMcWuCSQ=; b=bV/C4ds4LhKseZ
	3S9/01jDV6MX2iafjckf/eM3eXRnPq4eVrfxycFTSmQvVC/pZfi0O79H/zoQp+JfShlzYsJs81uej
	0pMujcpHA0e7TgSPPGZ16PCW13uPBfNIQNFj4M2DEYzcm9qGdLe3v7yDyleGEhibCvwX5nHRI62Kq
	8FBaD62L9OIQk/1ehtHLy9X8Q8ACLwA0M41x4vUFT8kM7mxLCsR9KfB7jLwHlMsn2i1xGY5DEE5li
	ydknDXR6zAR5RKYQPw8/08NQ/k9Y0xkUV75ysGmzwWm373j2NOyHWKClDe0eM4S1agp0u6XjgkpaP
	GEbnlcE93VtSIIUBHbIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbkA-0008AQ-AB; Tue, 13 Aug 2019 18:42:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbk0-0008A4-4l
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 18:41:53 +0000
Received: by mail-lf1-x142.google.com with SMTP id c9so77418770lfh.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 11:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vp0eUVuiPuFyE4hXSAd84YgGY8abHrhVjkpU+UxEaSA=;
 b=kR0vUw0nWxEunrhMgpW4wuM0wBrgdq/rziecdMOAEJKpRdun3ol7a1TMd+IUGpiaSn
 4If/ip9AR+cg/VY8wKN7d828cu+cPkke7OfP496UxfUWxtHxu1Mpcl6CgXf26ioVPIWm
 eRnlLnrcASpQxchhhhWoLdPPr8qqEP8D/HwAqYTKt87iEcNXpQhrbT7g9B3zSZ/S91m1
 eFNWjPGOw0FIUR9QzWIBfpLlt2e1Uy4wWVLqvbE3STN+XU7CykT+hm/69AWyKzk7BF1P
 RTbVunQ3qqvk1YW/hrBMU5rqkApMjH1ApaWEBwEJ+wWCK7pDM9SOaO1h+zrIhWv2BE5y
 Hiyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vp0eUVuiPuFyE4hXSAd84YgGY8abHrhVjkpU+UxEaSA=;
 b=i9NqbkIHHD8Yn9z8cyHU6iZFeavjegrE12RI0ghfClNHnCzLyiULg6vwgMhjvFFQyP
 8puxe5t/BxMCsWyh5bEw2JacouRq/ig03LKjbW2tAG1qoQFnjw9veSXUUn3TBCC3uNQU
 vxkm+uXyEMROI5P8DsP4YRtXvESWRfmRv0VL7K0NtUhNFGvpsyG32PxA8/dA7F9tQlbD
 GVr4lRiVG5j0/I7/i9ERi9Y0cwGQSe03FIKM+ReIyCni+1mEa8QSRY5cYZ/IC9WZhfce
 TXCoCGO3eGx7xDOAnnuRT3pP5yOkTcbgU6lvxAH81kJAsdrzBd90BIDdyyYB7bjDqgar
 Pf+g==
X-Gm-Message-State: APjAAAVXhYfBcuJRsouocmpZ/0u4LAmGi+Mn5lSRn8u3CIMblzw4vfii
 R5ecI5fdJwHcNI1wkSC90yuskl83
X-Google-Smtp-Source: APXvYqxq6t7lc2lafYcbqU7PJfuiljxGTEQD4vtqb63DplAKqGtH434fOeYxbO2PT8eNLU04Fm29kg==
X-Received: by 2002:a19:5f46:: with SMTP id a6mr24206123lfj.142.1565721710592; 
 Tue, 13 Aug 2019 11:41:50 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id d16sm3645353lfi.31.2019.08.13.11.41.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 11:41:49 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x7DIflfN032501;
 Tue, 13 Aug 2019 21:41:47 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x7DIflZU032500;
 Tue, 13 Aug 2019 21:41:47 +0300
Date: Tue, 13 Aug 2019 21:41:47 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20190813184147.hh7kj4m45hkancod@home.paul.comp>
References: <20190813165904.1988-1-fercerpav@gmail.com>
 <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
 <20190813182540.w4ee64he6hkteahc@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_114152_207917_35EEFE65 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Aug 13, 2019 at 09:25:41PM +0300, Paul Fertser wrote:
> From: Paul Fertser <fercerpav@gmail.com>
> Date: Tue, 13 Aug 2019 18:57:39 +0300
> Subject: [PATCH v2] ramips: add support for Xiaomi Mi Wi-Fi Router 3G v2

OK, I messed it up, and this is not picked up by patchwork
properly. Please excuse me, I'll do better when sending the next
version after review.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
