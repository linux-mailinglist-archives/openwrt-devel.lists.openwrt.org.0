Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3221F190B61
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 11:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfnxBI2754nBoydymRH+Nd6MU53xnOZ0vptyy1pP19M=; b=gqgAFEeLhrttaw
	cc2ZJScJMYISemKLLb5q6O65ZEPJd6waf7AQr5NdhhRUZIM7gcI/Ta7iuSXmswVt1rdf25vrfR6f0
	dsk3eXk5w3HfTsfUeVUwj7vo3zvr3YEak7g6jst0e5/QYgyEd2j68f25K1N9gjMLyVuwWeEahvS+C
	3AfRTlamtEzNhDmE+us5xMdPkBRHP/jxUCEsDODVFgKF7rK77JvF12KwVNMhGF5VmwFN/pX7KLS4j
	rvOLvjinoCj73yWTWB/rWUramxEJGPvRMYmX5J8ZBZjoKwJ6CN+kR8hQwjexeOeDTIBwTDIVgxmF7
	XaJqTz2uZ5cRewBjaKbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGh7r-0000uN-86; Tue, 24 Mar 2020 10:49:39 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGh7h-0000ty-M1
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 10:49:32 +0000
Received: by mail-lj1-x232.google.com with SMTP id g27so9213856ljn.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 03:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ifL5vKNdCbJxjshZy2e2QkRRMR62D97NWUbA87Ur238=;
 b=c6SSshttBGJuSQj8LIH87/SoITj0xffJGAcnZVjnqlAQ89fMmGOLENPRaWz2UTN969
 bAu9Ei+SJzvV/i7OvGzcIDH+NE+tDiu3So9tfkVwZZD19VHEobq/PlaIDb9erVfR/nXN
 yXaTHVYw3oBtUOUHSwC0mb/4qDxqb7PipYfpg77pYVBpATMz3oc/+JWd61JysZmKkQq0
 XO+V1cvNJsejd0TPsCkZ4o+5g5OfIHYR/hTwB1MosAE+C+TqTbVCYJCw43MoNtVEpTFk
 EIXU97TPW1eA6xm0HAA9VYFkvSDu/RSlk99pRZI9nBDtVvPcNBc7cVs33JecYCd8e4IU
 0VXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ifL5vKNdCbJxjshZy2e2QkRRMR62D97NWUbA87Ur238=;
 b=gC4Kk+yefcdOLTFg84L/+J5JZiPTL7Cp+/eF+18A8m2h9LSR/H4p4jFhltU/a54iuH
 kZBXJQSG9GyD1iC5sTqTSwsufWfmwlghErqb6YrAfDHei+iQ4Ox4lAt+zdTVKdx/LXmY
 7UTVP61LArQ4yL54ohKS5HxodMexp+1t17kjh+SLGs6WiAllE63t1eSyBL59VzYUjw4C
 GLTU/EYNvSUrYOhJpm23IVFXV/Vs3yOwJy7oFH91WC8kCimqxHbDXYB914zN6Z+qRcL5
 TAzCdseUDcedBoDnmLxXkvuZWMGcBQPliYPUHZsMmMymoyUcl65tTUoyGVQEMh5h3aJc
 zW/Q==
X-Gm-Message-State: ANhLgQ2FRhw+KKVtBS8TofoiONOr6Py8jp6IlDiJK4tdNswGOhL90lY5
 kbVPXTC6wm29wJBMwkW34Wk=
X-Google-Smtp-Source: ADFU+vvLLBIETlsYOVj/8BiIU4DHBQbRj+rU/4q5vurbinPc16/1tenvTZlDHWtYRrCzXO8kOR1IcA==
X-Received: by 2002:a2e:b5ce:: with SMTP id g14mr16833898ljn.25.1585046967690; 
 Tue, 24 Mar 2020 03:49:27 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id c20sm10019967lfb.60.2020.03.24.03.49.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 03:49:26 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 02OAnNvc006615; Tue, 24 Mar 2020 13:49:24 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 02OAnNX4006614;
 Tue, 24 Mar 2020 13:49:23 +0300
Date: Tue, 24 Mar 2020 13:49:23 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
Message-ID: <20200324104922.GB27666@home.paul.comp>
References: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
 <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_034929_745352_46DE69BC 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On Tue, Mar 24, 2020 at 07:39:05PM +0900, Jeonghum Joh wrote:
> I'd like to use "strace" in openwrt firmware.

Just install "strace" package, it's in base.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
