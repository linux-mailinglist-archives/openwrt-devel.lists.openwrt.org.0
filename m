Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56E0170479
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 17:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhtoN2iSGydLB5Zw1fghszVT/QvTleNhq7z+I61889o=; b=uwwC0yYRN+QDGY
	CgFSEZtFuqZt/a4a74C6xKpW7GxZUjtvzx/oJVJkk0HUSis6g3JbziDj4Vvqx+KObB8akFzfZJgRx
	Zkee1MUwjYwZXXXOt582koncfdbV5sSphAV8UKIxsWlFiH7sreGpvA7DR1c5R8MRgr2FwKHROM+Tw
	gmiOS8zdQ6z60vASIdLE60FDSB3Tm+0dZdY+jeroQldBav5l4NTe2HpxmQzFQwJ9fYRTngSbl6WxA
	vzzr6iKP1qWXkxggw134qtIR608Ppr+RCTYZP4swDirm7+JypfOiRwuj1nmWTX15uhWA8yYmnceTe
	6FQJbvXsVDkiWDYJflrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zdY-0001bZ-CS; Wed, 26 Feb 2020 16:34:16 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zdR-0001ax-1E
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 16:34:10 +0000
Received: by mail-wr1-x42a.google.com with SMTP id l5so3882505wrx.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 26 Feb 2020 08:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h2BTYqnX/3QfRbl6mEnUSel8LVRwA34vBSqbgGBbK9Q=;
 b=TRUZ26Oy3xenD+LpCGz4rYsRJj8536mfcKo0UR1eL9biWJKQXT75JUtHGywDfAEAyB
 PZ8+rBjL6kWROfjzVUJ68uvLZdwrvlIkaNRMLGDMGP3tzMZ6W2DtVhIKY9giEEVs4UXY
 sJ9XBrVM9gKOWM/kTJphcltBYO5G5ke1NwXaEAL3a0PNR+rOEOrI3iUhuDmd/e6Lssaz
 0fnu5J0NNJtZUMGi95wHMeO+aitvef2cwqSwf+7cx73JqT1Vmk2teAKaHP0bIQ1HO0dm
 wxApnc+3DfcwxRQr+8A7W0RprPrJsKCEAf0Lmm6oQIMYZstUlPm5xddGXzm6Emf381Ws
 OhIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h2BTYqnX/3QfRbl6mEnUSel8LVRwA34vBSqbgGBbK9Q=;
 b=dzAVn1JENphw/10XTGCp/QJGrHdWtR8K4APfMYEMH/J7vmmV4peu+DeTgxgxP3Uzy2
 Fgv2BiFt7irJPD8jV2AR7WK6CQLCnLZoy2JFUl8PHcN802zXGkmPqZXCvr7Ap7Yu4G5S
 IQgyZjU13246s8HRn71SuD+Uw4mazgJMh1GUsY70v4B2oVi615RC3EbZpJu0jFn28UZa
 5n4CHA0W0kHd+mj3XAgI9O8IdZTn3dPS7Z++5v8pdtBVoMcDuD5p7yAwcJV/iornFpFX
 hT7dLyyiuY2zZhfPamURmFmFfjnE30dhrbvHduafBx91r0RN63LlljM4ayWXpn0XUP1X
 mOMw==
X-Gm-Message-State: APjAAAUjFKOF6TqGCaFaRssj5dltdTVhGKDuzmadpE7/X2OR7L01QEze
 83tGKeROxEqZ8qJdIPpBvsb88bRD
X-Google-Smtp-Source: APXvYqxhgLYG7q4SAYr6RdPC4d9SjudSN+CpjKWQ5cXV2+XC5DGhTI/YXNl/Y4pBJZWIhlZ/+rmKPw==
X-Received: by 2002:a5d:40d1:: with SMTP id b17mr6186874wrq.93.1582734847258; 
 Wed, 26 Feb 2020 08:34:07 -0800 (PST)
Received: from localhost
 (p200300F6671636AC85DC5B35B7C9DE84.dip0.t-ipconnect.de.
 [2003:f6:6716:36ac:85dc:5b35:b7c9:de84])
 by smtp.gmail.com with ESMTPSA id f65sm3492745wmf.29.2020.02.26.08.34.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 08:34:07 -0800 (PST)
To: Rosen Penev <rosenp@gmail.com>
References: <0a08710a-9438-cbc6-126f-7a8b278e75d0@gmail.com>
 <CAKxU2N_z0ORuS7T7UhB0zdNJdnQZVC5wDtONE5kaz4UvSMHBJw@mail.gmail.com>
From: e9hack <e9hack@gmail.com>
Message-ID: <4e6ca538-6b5b-7045-90b4-638a8c36bc91@gmail.com>
Date: Wed, 26 Feb 2020 17:34:01 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <CAKxU2N_z0ORuS7T7UhB0zdNJdnQZVC5wDtONE5kaz4UvSMHBJw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_083409_081030_8AA9BDE8 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Stubby is broken
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am 25.02.2020 um 22:41 schrieb Rosen Penev:
> I don't see any of my init script changes breaking this.
> 
> Does this work?
> --- a/net/stubby/files/stubby.init
> +++ b/net/stubby/files/stubby.init
> @@ -205,7 +205,7 @@ generate_config()
>      }
> 
>      config_foreach handle_resolver resolver
> -} > "$config_file"
> +}
> 
>  start_service() {
>      local config_file_tmp
> @@ -223,7 +223,7 @@ start_service() {
>          cp "$stubby_manual_config" "$stubby_config"
>      else
>          config_file_tmp="$stubby_config.$$"
> -        generate_config "$config_file_tmp"
> +        generate_config "$config_file_tmp" > "$config_file"
>          mv "$config_file_tmp" "$stubby_config"
>      fi
>      chmod 0644 "$stubby_config"

Variable config_file is a local variable in function generate_config. Outside they is empty.

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
