Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B018513000F
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 03:06:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oL2I3S1neHh+S0CgLBbxRLoOkn6AKo02bDZA36hbIAk=; b=d+qMYxnLKqCG0mXkMO9M2wZVy
	mUvIcuMM/vY5XdnNBwgpl7jHL2UIxT3ASL+m26PgMbHMuAxviTL2CYMOnNPUqx3TnhaGHLcC2EQeh
	7LbZ5VW3QN5GMvdJ0ik/pPYwasP+eJUfRZTH0+qnPfVBe3ujg9qZJfmXc2UVzhBiCgAPShcCodVMx
	/TrS4TvyqJLz/ooqlcoMOpUw3eKBUfv49sdYebEvKoqdc7FthB4RyZCDXcntjcqbuozEKrjvt/Q3D
	6x4kRH5+/zTYz7Vpt9QObw3GolcdHlv8R8lja+plNEn2gHJEyLkQXHqd5J+6E8g7rrgu49rX9EDFg
	92l5mo68g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inYpG-0000BC-Oq; Sat, 04 Jan 2020 02:06:02 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inYp3-0000As-V5
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 02:05:51 +0000
Received: by mail-pj1-x102f.google.com with SMTP id a6so5235095pjh.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Jan 2020 18:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=gXbKYQwPDa1UgDXbpeuTjxlUukE+GB5qjfyiVRtWYs8=;
 b=BWTvFaCwLN9gOTktBCZfbczHm5n/eRFRKy8V0GFF0e70KwCjq9mx1edYaRBNyf+tu5
 G+l/L3plp/+ehqwmNdE/up9M6eS36k/JHy7Pm59xW4cAYP5oiNxqUy99aQN0O37qoq/g
 jPo+oxZ2UD6kf0b6N45mPE1+kr0li+TKUGjxCyiNJwgDO71XgWEZHWz/Elmtlhr/bK8N
 ibTtfJWp9NXjBDbK/ApvB76oOtMLaSR5d1jvyaQ5CZW8Xl1Ec4kTvAvcWuV4Y80HRa/g
 5SFdAiLyAmNjy8i6BoyOSdrs4agL9rOji0JMTtLdFwDl1GekhwAQQ2H5+NZGE5lHGWGl
 9oBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gXbKYQwPDa1UgDXbpeuTjxlUukE+GB5qjfyiVRtWYs8=;
 b=AhsV1HaPyky8YK71cg2FimmtX/HYsaRgR9qD4GWFk+s7/pICXy1ihqxNr9Qz1d20Rc
 JVK0OuCm1ht2ssdCu4VlbX0BYpDtrUZ0LDmxplLhTgzPaSRqbh983LsBB/rLLjtRelWp
 jBgyMcrX9gHb6F5pNWav5W1QjKS9GG/ByC+vn00LiJUZMYzQA6RHe2e0aXW0waD4+MVW
 sBNanNL4KFLW4+WockbP02p48zf8koQrdqAIh9HYkFlJNyMXl4CB86MG0Kg/4sQfh98S
 Oa4b8uln1Wp5Zw8VOtXrWtWseOfccbKLJLsiP36763mTK90XGNH5Ci4jBsM2oo+VsqTY
 0QuQ==
X-Gm-Message-State: APjAAAVGnSN61UXY+fGCI6hym2AdlGYGSFSrfLYMD1y8UjKmU0zeUEPv
 x2AcEyK1dI2eUEI334pErPZPWHUK
X-Google-Smtp-Source: APXvYqxrgKTRms4/Z5RFveVtCTn/klrzSVl447QmNrTKL2F0qf+Uc2rTz6G0EIGXSXYxtyno80fI0Q==
X-Received: by 2002:a17:90a:cb8c:: with SMTP id
 a12mr30932409pju.71.1578103545516; 
 Fri, 03 Jan 2020 18:05:45 -0800 (PST)
Received: from ?IPv6:240b:10:2720:5500:9023:1cd:7665:11ef?
 ([240b:10:2720:5500:9023:1cd:7665:11ef])
 by smtp.gmail.com with ESMTPSA id t63sm69651587pfb.70.2020.01.03.18.05.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Jan 2020 18:05:45 -0800 (PST)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <00f001d5c23b$c980ad10$5c820730$@adrianschmutzler.de>
From: Tokunori Ikegami <ikegami.t@gmail.com>
Message-ID: <3d29ecf2-b5b4-1384-fcba-1e3dbbe1446c@gmail.com>
Date: Sat, 4 Jan 2020 11:05:41 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <00f001d5c23b$c980ad10$5c820730$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_180550_002290_F8845E1F 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ar71xx: Remove mtd cfi_cmdset_0002 status check
 patch
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

Hi,

Thanks for the confirmation.

Yes your understanding is correct.
Also I could understand it as rejected patch since ar71xx is deprecated.

By the way how about ath79 is if deprecated as same?
Since there are same patches in ath79 also.

Regards,
Ikegami

On 2020/01/03 22:43, mail@adrianschmutzler.de wrote:
> Hi,
>
> your patch "ar71xx: Remove mtd cfi_cmdset_0002 status check patch" looks cosmetical to me. Is this impression correct?
>
> If yes, since ar71xx is effectively deprecated and won't be included in next (after-19.07) release, I would reject it to save reviewing time for other changes.
>
> I hope you understand this and continue to improve OpenWrt with other submissions.
>
> https://patchwork.ozlabs.org/patch/1198343/
>
> Best
>
> Adrian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
