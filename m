Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ED8190C6B
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 12:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaMGlaWOEL6fzBAF2R+8FIfglhqwuQt5G1HRio81OT8=; b=DNRUTqM9K/sSZr
	RfDjzZ5Lfta8Azb0FXrodI+xeN//dnkwZf1kSfqAFPFRGZ0VnSYUPVVAGFDZ3jRhymi6aLrbZg2b8
	wiJ1B/Abqjj0GJpJ5OAHvYq6Kp8JgSAeJUG4DcP2c9hQ69801pdZ//p1kiGPlQAVpyj1PzQ/tGTjb
	mMbiIX1exnDNStnfGkVElii2/TKeBdUSIf34Xo+H1zBney7/FOAX8ubPBn75zNrXyJCMPp9u+lDhI
	FFw5K8JCiSaFelDft5/OFs2k/FTUC49paYbF1E/xLM+dc42XN70tmeq6ZISZ9RGh+Xaj8AAXBU5Wp
	kmOiWVRXp0zfV6XJJDbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhjS-0003Ve-Jo; Tue, 24 Mar 2020 11:28:30 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhjI-0003VN-Da
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 11:28:21 +0000
Received: by mail-lf1-x133.google.com with SMTP id t21so12847194lfe.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 04:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=q4VcdZyJiJWoK7ObFQQjfuXxyse6xZI9ADLZ6di1U2A=;
 b=WUmgHDjY2IIpbKbpTzBZKabNcSr0rNwDWQJsRT3ajbApg04ItzphbyVlbAAslbSaPK
 n2GVMHbl0hm0zc0RpqNONbqcmyZkeR1ZT0pzHtqH2IWgyTHhgaMG730glMJdmn2Mf7xB
 ul6uAqUI6OLAzdxtmDMnww8R2IR8SzaB7wQzR55igwNh1mfdyp+QwCXDBEPjR1ZwvgFk
 raPHDV0Vl+cKSSHfF8dnAN9N4WrKTSxuu53c2QsBcephOKqV6FFCNFKhrn/PlJUBu6K8
 jv0H+6vZoJLzMSkLWL4XsA2zkyalcJcF5rA/nnVwBc/8tIou+ORVZ7mO/OGXZDq/CRYl
 oyoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=q4VcdZyJiJWoK7ObFQQjfuXxyse6xZI9ADLZ6di1U2A=;
 b=siZNuOqgFNY7DMQxp64GR+d0EZuIEnY8bkUNftr/cx/I7t2FrimBctUut/vG7Df0hU
 W7OjguWuexsD0K8PoHV2SOmhSflMeENYpd+1KlR7AviKJQfnWj28JTayPb4RS0CTlydu
 v2xKJJEuUaRbFwQPjw3IWK6LSfnSE3Y3KLhJuP6bUSKzbGhSzlJfZQQy7Qhkgt55NE0M
 mQuLzGeUYR1hC6bpypWu+CASi+7GBGInLTSqp9pcNS9HdwKjeBSSDCuCplCBuVgc5FfC
 G4zJickTY4rNF4S4h5pGA9Wr1gXIRMYIK4h1vN6Nm/kQo9nSAN/nxxODZxYIlhnJlBwl
 SMBQ==
X-Gm-Message-State: ANhLgQ1dKbmCWVzqxGkoODLR2Qw6a2diP9H9Zs5/1pawnIUbS0EBjkP2
 DIwIQ55Writvo0rt8/teEV8=
X-Google-Smtp-Source: ADFU+vsdxzhGRUB+G80/xcxx1tybm8L0RHf9IzlcqcfDitQvSIyQbcfFMRQZm8fJ53tiTpBJE1Vb+g==
X-Received: by 2002:ac2:5594:: with SMTP id v20mr16509796lfg.2.1585049298639; 
 Tue, 24 Mar 2020 04:28:18 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id m11sm2701332lfj.90.2020.03.24.04.28.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 04:28:18 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 02OBSFcc006667; Tue, 24 Mar 2020 14:28:16 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 02OBSEe3006666;
 Tue, 24 Mar 2020 14:28:14 +0300
Date: Tue, 24 Mar 2020 14:28:14 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
Message-ID: <20200324112814.GC27666@home.paul.comp>
References: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
 <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
 <alpine.LNX.2.22.413.2003241157170.7925@localhost.localdomain>
 <CALYKT1hD+HgDsJCOOPk2L0Y=HmZTFPsRrsQXo9c96cygXaPo9w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALYKT1hD+HgDsJCOOPk2L0Y=HmZTFPsRrsQXo9c96cygXaPo9w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_042820_460084_057D7152 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] How can I include strace into the firmware?
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Mar 24, 2020 at 08:08:08PM +0900, Jeonghum Joh wrote:
> Do you have some suggestion=A0for me?

opkg update

before trying to install

-- =

Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
